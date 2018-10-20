using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AltiSubjHeadAcceptEmp : System.Web.UI.Page
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
            AlternativeSub obj = new AlternativeSub();
            DataTable TBL1 = obj.dtNotAcceptAliSubHeadApplication();
            gvAlternativeSubject.DataSource = TBL1;
            gvAlternativeSubject.DataBind();
        }


        protected void gvAlternativeSubject_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;
            GridViewRow row;
            GridView grid = sender as GridView;

            if (e.CommandName == "Agree")
            {

                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvAlternativeSubject.DataKeys[rowIndex]["ID"];
                Accept(val);

            }
            else if (e.CommandName == "NotAgree")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvAlternativeSubject.DataKeys[rowIndex]["ID"];
                NotAccept(val);
            }
        }




        public void Accept(int ID)
        {
            AlternativeSub obj = new AlternativeSub();

            if (obj.AcceptHeadAltiSubj(ID) == 1)
            {
                fillGv();
            }

        }

        public void NotAccept(int ID)
        {
            AlternativeSub obj = new AlternativeSub();

            if (obj.NotAcceptHeadAltiSubj(ID) == 1)
            {
                fillGv();
            }

        }
    }
}