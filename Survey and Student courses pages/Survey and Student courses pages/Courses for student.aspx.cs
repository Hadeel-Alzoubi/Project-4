using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
                    //Response.Redirect("Login.aspx");
                }
                else
                {
                    // Get the user ID from the session
                    int userId = (int)Session["UserID"];

                    // Check if the user is registered for any courses
                    bool isRegistered = CheckCourseRegistration(userId);

                    // Show or hide the CoursesPanel based on registration status
                    CoursesPanel.Visible = isRegistered;
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



        private bool CheckCourseRegistration(int userId)
        {
            // Implement your logic to check course registration

            return true; // Assume the user is registered for a course
        }
    }
}
