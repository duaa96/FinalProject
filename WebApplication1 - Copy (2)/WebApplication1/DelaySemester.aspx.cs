using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DelaySemester : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Session["ID"].ToString());
                filldata(ID);
            }
        }

        private void filldata(int iD)
        {
          /*  Studnets objStu = new Studnets();
            DataRow Stu = objStu.drSearchStudent(ID);
            if (Stu != null)
            {
                labCollage.Text = Stu["CollageName"].ToString();
                labStudentName.Text = Stu["StudentName"].ToString();
                labStudentNumber.Text = Stu["UniversityID"].ToString();
                labMager.Text = Stu["Mager"].ToString();
            }
            labDate.Text = DateTime.Today.ToString();*/
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string Reason = "";
            if (txtReasonDelay.Text != string.Empty)
                Reason = txtReasonDelay.Text.ToString();
            DelaySemesterClass obj = new DelaySemesterClass();
            int ID = Convert.ToInt32(Session["ID"]);
            string Datenow = labDate.Text.ToString();
          /*  if (obj.AddDelaySemester(ID, "", "", Reason, Datenow, "", 0, "", "", 0, "", 6) == 1)
            {
                txtReasonDelay.Text = "";
            }*/
        }
    }
}