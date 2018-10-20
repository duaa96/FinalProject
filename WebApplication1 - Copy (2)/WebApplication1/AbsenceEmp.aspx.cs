using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace WebApplication1
{
    public partial class AbsenceEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillGv();
            }

        }

        public void fillGv()
        {
            AbsenceExam obj = new AbsenceExam();
            DataTable TBL1 = obj.dtNotAcceptApsenceApplication();
            gvAbsenceExam.DataSource = TBL1;
            gvAbsenceExam.DataBind();
        }
        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            filePath = "uploadFiles/"+filePath;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" +(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void lnkDownload2_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            filePath = "uploadFiles/" + filePath;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + (filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void gvAbsenceExam_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;
            GridViewRow row;
            GridView grid = sender as GridView;

            if (e.CommandName == "Agree")
            {
            
                    int rowIndex = int.Parse(e.CommandArgument.ToString());
                    int val = (int)this.gvAbsenceExam.DataKeys[rowIndex]["ID"];
                Accept(val);
                 
            }
            else if (e.CommandName == "NotAgree")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int val = (int)this.gvAbsenceExam.DataKeys[rowIndex]["ID"];
                NotAccept(val);
            }
        }

       


        public void Accept(int ID)
        {
            AbsenceExam obj = new AbsenceExam();
            
            if (obj.AcceptAbsenceExam(ID)==1 )
            {
                fillGv();
            }

        }

        public void NotAccept(int ID)
        {
            AbsenceExam obj = new AbsenceExam();

            if (obj.NotAcceptAbsenceExam(ID) == 1)
            {
                fillGv();
            }

        }


    }
}