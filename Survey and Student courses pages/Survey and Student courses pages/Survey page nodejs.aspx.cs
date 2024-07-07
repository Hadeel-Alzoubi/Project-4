using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey_and_Student_courses_pages
{
    public partial class Survey_page_nodejs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["SurveySubmitted_nodeJS"] != null && (bool)Session["SurveySubmitted_nodeJSP"])
                {
                    ShowThankYou();
                }
                else
                {
                    LoadQustions();
                }
            }
        }
        // Class to handle feedback data
        public class Feedback
        {
            public string UserID { get; set; }
            public List<string> Responses { get; set; }

            // Constructor to initialize user ID and responses
            public Feedback(string userId, List<string> responses)
            {
                UserID = userId;
                Responses = responses;
            }

            // Method to save feedback data to a file
            public void SaveFeedback(string filePath)
            {
                List<string> feedbackData = new List<string> { $"User ID: {UserID}" };
                feedbackData.AddRange(Responses);
                File.AppendAllLines(filePath, feedbackData);
            }
        }

        private void LoadQustions()
        {
            string file = Server.MapPath("~/questionsnodeJS.txt");
            if (File.Exists(file))
            {
                string[] qustions = File.ReadAllLines(file);
                int _numbers = 1;

                foreach (string qustion in qustions)
                {
                    // Create div
                    Panel qustionBlock = new Panel { CssClass = "qustion-block" };
                    // Label for Q
                    Label qustionLable = new Label
                    {
                        ID = "LabelQ" + _numbers,
                        Text = qustion,
                        CssClass = "text-center d-block font-weight-bold"
                    };
                    qustionBlock.Controls.Add(qustionLable);
                    // If postback, check if the question was answered
                    if (IsPostBack)
                    {
                        string selectedValue = Request.Form["G" + _numbers];
                        if (string.IsNullOrEmpty(selectedValue))
                        {
                            if (!qustionLable.Text.Contains("<span class='required-star'>*</span>"))
                            {
                                qustionLable.Text += " <span class='required-star' style='color:red;'>*</span>"; // Add a red star to indicate the question is unanswered
                            }
                        }
                    }

                    // Create radio buttons
                    string[] options = { "Excellent", "Very Good", "Good", "Bad", "Very Bad" };
                    for (int i = 0; i < options.Length; i++)
                    {
                        Panel formCheck = new Panel { CssClass = "form-check" };
                        RadioButton radioButton = new RadioButton
                        {
                            ID = "r" + _numbers + "_" + (i + 1),
                            GroupName = "G" + _numbers,
                            CssClass = "form-check-input",
                            Attributes = { ["value"] = options[i] },
                        };

                        if (IsPostBack)
                        {
                            // Check if this radio button was selected before the form submission
                            string selectedValue = Request.Form[radioButton.GroupName];
                            if (selectedValue != null && selectedValue == options[i])
                            {
                                radioButton.Checked = true;
                            }
                        }

                        Label radioLable = new Label
                        {
                            Text = options[i],
                            CssClass = "form-check-label",
                            AssociatedControlID = radioButton.ID,
                        };
                        formCheck.Controls.Add(radioButton);
                        formCheck.Controls.Add(radioLable);
                        qustionBlock.Controls.Add(formCheck);
                    }

                    QuestionsPlaceholder.Controls.Add(qustionBlock);
                    _numbers++;
                }
            }
        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Reset error message visibility at the beginning
            ErrorMessage.Visible = false;

            string file = Server.MapPath("~/questionsnodeJS.txt");
            List<string> questions = File.ReadAllLines(file).ToList();

            string[] feedback = new string[questions.Count];
            bool allAnswered = true; // Flag to check if all questions are answered

            for (int i = 0; i < questions.Count; i++)
            {
                string selectedValue = Request.Form["G" + (i + 1)];

                if (string.IsNullOrEmpty(selectedValue))
                {
                    allAnswered = false; // If any question is not answered, set flag to false

                }
                else
                {
                    feedback[i] = $"{questions[i]}: {selectedValue}";
                }
            }

            if (allAnswered)
            {
                // Check if UserID exists in the session
                if (Session["UserID"] != null)
                {
                    string userId = Session["UserID"].ToString();

                    // Create Feedback object and save feedback
                    Feedback userFeedback = new Feedback(userId, feedback.ToList());
                    string feedbackPath = Server.MapPath("~/feedbacknodeJS.txt");
                    userFeedback.SaveFeedback(feedbackPath);

                    // Mark as submitted
                    Session["SurveySubmitted_nodeJS"] = true;
                    // Show thank you message 
                    ShowThankYou();
                }
                else
                {
                    // Handle the case where the UserID is not set in the session
                    ErrorMessage.Text = "User ID is not available. Please log in and try again.";
                    ErrorMessage.Visible = true;

                    // Ensure the survey panel remains visible
                    SurveyPanel.Visible = true;
                    ThankYouPanel.Visible = false;
                }
            }
            else
            {
                // Show error message if not all questions are answered
                LoadQustions();
                ErrorMessage.Text = "Please answer all questions before submitting the survey.";
                ErrorMessage.Visible = true;

                // Ensure the survey panel remains visible
                SurveyPanel.Visible = true;
                ThankYouPanel.Visible = false;
            }
        
    }


        private void ShowThankYou()
        {
            SurveyPanel.Visible = false;
            ThankYouPanel.Visible = true;
        }

        protected void BackToCoursesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses for student.aspx");
            //Response.Write("<script>alert('Please select an option.');</script>");

        }
    }
}
