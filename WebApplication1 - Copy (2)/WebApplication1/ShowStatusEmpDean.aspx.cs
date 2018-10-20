﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ShowStatusEmpDean : System.Web.UI.Page
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
            ShowStatusClass obj = new ShowStatusClass();
            DataTable TBL1 = obj.dtNotAcceptDeanShowStatusApplication();
            gvShowStatus.DataSource = TBL1;
            gvShowStatus.DataBind();
        }

        protected void gvShowStatus_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;
            GridViewRow row;
            GridView grid = sender as GridView;

            if (e.CommandName == "Agree")
            {

                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvShowStatus.DataKeys[rowIndex]["ID"];
                Accept(val);

            }
            else if (e.CommandName == "NotAgree")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvShowStatus.DataKeys[rowIndex]["ID"];
                NotAccept(val);
            }
        }




        public void Accept(int ID)
        {
            ShowStatusClass obj = new ShowStatusClass();

            if (obj.AcceptDeanShowStatus(ID) == 1)
            {
                fillGv();
            }

        }

        public void NotAccept(int ID)
        {
            ShowStatusClass obj = new ShowStatusClass();

            if (obj.NotAcceptDeanShowStatus(ID) == 1)
            {
                fillGv();
            }

        }
    }
}