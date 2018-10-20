using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PullCourseHeadAcceptEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                fillGv();
            }


        }
        private void fillGv()
        {
            PullCourseClass obj = new PullCourseClass();
            DataTable TBL1 = obj.dtNotPullCourseHeadApplication();
            gvPullCourse.DataSource = TBL1;
            gvPullCourse.DataBind();
        }


        protected void gvPullCourse_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;
            GridViewRow row;
            GridView grid = sender as GridView;

            if (e.CommandName == "Agree")
            {

                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvPullCourse.DataKeys[rowIndex]["ID"];
                Accept(val);

            }
            else if (e.CommandName == "NotAgree")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvPullCourse.DataKeys[rowIndex]["ID"];
                NotAccept(val);
            }
        }




        public void Accept(int ID)
        {
            PullCourseClass obj = new PullCourseClass();

            if (obj.AcceptHeadPullCourse(ID) == 1)
            {
                fillGv();
            }

        }

        public void NotAccept(int ID)
        {
            PullCourseClass obj = new PullCourseClass();

            if (obj.NotAcceptHeadPullCourse(ID) == 1)
            {
                fillGv();
            }

        }
    }
}