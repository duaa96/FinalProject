using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1.UploadFiles
{
    public partial class HomeStudent : System.Web.UI.Page
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
                DateTime date1 = DateTime.Today;
                Application obj = new Application();
                DataTable tbl1 = obj.dtSearchApplication(date1);
                ddlApplication.DataSource = tbl1;
                ddlApplication.DataTextField = "ApplicationName";
                ddlApplication.DataValueField = "ApplicationID";
                ddlApplication.DataBind();

            }

            protected void ddlApplication_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            int ApplicationID = Convert.ToUInt16(ddlApplication.SelectedValue.ToString());
            if(ApplicationID ==1)
            {
                Response.Redirect("Absenceexcuse.aspx");
            }
            else if (ApplicationID == 2)
            {
                Response.Redirect("DropSemester.aspx");
            }

            else if (ApplicationID == 3)
            {
                Response.Redirect("AltSubjectr.aspx");
            }
            else if (ApplicationID == 4)
            {
                Response.Redirect("ShowStates.aspx");
            }
            else if (ApplicationID == 5)
            {
                Response.Redirect("PullCourse.aspx");
            }
        }
    }
}