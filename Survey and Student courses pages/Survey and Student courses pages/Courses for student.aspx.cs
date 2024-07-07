using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey_and_Student_courses_pages
{
    public partial class Courses_for_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in
                if (Session["UserID"] == null)
                {
                    // Redirect to login page if not logged in
                    // Response.Redirect("Login.aspx");
                }
                else
                {
                    // Get the user ID from the session
                    int userId = (int)Session["UserID"];

                    // Get the list of courses the user is registered for
                    List<string> registeredCourses = GetRegisteredCourses(userId);

                    // Update the visibility of course cards based on registration status
                    UpdateCourseCards(registeredCourses);
                }
            }
        }

        protected void LinkButtonCsharp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey Page Csharp.aspx");
        }

        protected void LinkButtonPHP_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey page PHP.aspx");
        }

        protected void LinkButtonNodejs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey page nodejs.aspx");
        }

        protected void LinkButtonCplus_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey page Cplus.aspx");
        }

        private List<string> GetRegisteredCourses(int userId)
        {
            // Implement your logic to get the list of courses the user is registered for
            // This is just a placeholder implementation
            List<string> registeredCourses = new List<string> { "Csharp", "PHP" }; // Example courses
            return registeredCourses;
        }

        private void UpdateCourseCards(List<string> registeredCourses)
        {
            if (!registeredCourses.Contains("Csharp"))
            {
                CsharpCard.Attributes["class"] += " disabled-card";
            }

            if (!registeredCourses.Contains("PHP"))
            {
                PHPCard.Attributes["class"] += " disabled-card";
            }

            if (!registeredCourses.Contains("Nodejs"))
            {
                NodejsCard.Attributes["class"] += " disabled-card";
            }

            if (!registeredCourses.Contains("Cplus"))
            {
                CplusCard.Attributes["class"] += " disabled-card";
            }
        }

    }
}
