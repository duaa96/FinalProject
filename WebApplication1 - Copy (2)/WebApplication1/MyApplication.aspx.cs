using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MyApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillddl();
            }

            else
            {
            }
        }

        private void fillddl()
        {
           
            Application obj = new Application();
            DataTable tbl1 = obj.dtSearchMyApplication();
            ddlMyApplication.DataSource = tbl1;
            ddlMyApplication.DataTextField = "ApplicationName";
            ddlMyApplication.DataValueField = "ApplicationID";
            ddlMyApplication.DataBind();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Session["ID"].ToString());

            int ApplicationID = Convert.ToUInt16(ddlMyApplication.SelectedValue.ToString());
            Application obj = new Application();
            if (ApplicationID == 1)
            {
                DataTable TBL1 = obj.dtSearchMyAbsenceApplication(ID);
                gvAbsenceExam.DataSource = TBL1;
                gvAbsenceExam.DataBind();

            }
            else if (ApplicationID == 2)
            {
                DataTable TBL1 = obj.dtSearchDropSemesterApplication(ID);
                gvDropSemester.DataSource = TBL1;
                gvDropSemester.DataBind();
            }

            else if (ApplicationID == 3)
            {
                DataTable TBL1 = obj.dtSearchAlternativeSubjectApplication(ID);
                gvAlternativeSubject.DataSource = TBL1;
                gvAlternativeSubject.DataBind();
            }
            else if (ApplicationID == 4)
            {
                DataTable TBL1 = obj.dtSearchShowStatusApplication(ID);
                gvShowStatus.DataSource = TBL1;
                gvShowStatus.DataBind();
            }
            else if (ApplicationID == 5)
            {
                DataTable TBL1 = obj.dtSearchPullCourseApplication(ID);
                gvPullCourse.DataSource = TBL1;
                gvPullCourse.DataBind();
            }
        }
    }
}