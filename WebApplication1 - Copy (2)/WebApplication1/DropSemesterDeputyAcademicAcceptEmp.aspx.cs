using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DropSemesterDeputyAcademicAcceptEmp : System.Web.UI.Page
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
            DropSemester obj = new DropSemester();
            DataTable TBL1 = obj.dtNotAcceptDropSemesterDeputyAcademicApplication();
            gvDropSemester.DataSource = TBL1;
            gvDropSemester.DataBind();
        }

        protected void gvDropSemester_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;
            GridViewRow row;
            GridView grid = sender as GridView;

            if (e.CommandName == "Agree")
            {

                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvDropSemester.DataKeys[rowIndex]["ID"];
                Accept(val);

            }
            else if (e.CommandName == "NotAgree")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvDropSemester.DataKeys[rowIndex]["ID"];
                NotAccept(val);
            }
        }




        public void Accept(int ID)
        {
            DropSemester obj = new DropSemester();

            if (obj.AcceptDeputyAcademicDropSemester(ID) == 1)
            {
                fillGv();
            }

        }

        public void NotAccept(int ID)
        {
            DropSemester obj = new DropSemester();

            if (obj.NotAcceptDeputyAcademicDropSemester(ID) == 1)
            {
                fillGv();
            }

        }
    }
}