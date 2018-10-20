using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Dropsemester : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Session["ID"].ToString());

                fillDataForm(ID);
                fillddl();
            }

            else
            {
            }
        }

        public void fillDataForm(int ID)

        {
           

            Studnets objStu = new Studnets();
            DataRow Stu = objStu.drSearchStudent(ID);
            if (Stu != null)
            {
                labCollage.Text = Stu["CollageName"].ToString();
                labNameStudent.Text = Stu["StudentName"].ToString();
                labNumStudent.Text = Stu["UniversityID"].ToString();
                labSection.Text = Stu["SectionName"].ToString();

            }

        }


        private void fillddl()
        {

            int ID = Convert.ToInt32(Session["ID"].ToString());
            RegistredCourses obj = new RegistredCourses();
            DataTable tbl1 = obj.dtSearchRegisterSubject(ID);
            gvCourses.DataSource = tbl1;
            gvCourses.DataBind();

        }

       
     

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            string date1 = DateTime.Today.ToString();
            string Reason = txtReasons.Text.ToString();
           int ID =Convert.ToInt32( Session["ID"].ToString());
            DropSemester objsem = new DropSemester();
            
            if(objsem.AddDropSemester(ID, Reason, date1, "", 0, "", 0, "", 0, "", 0, "", 2)==1)
            {
                txtReasons.Text = "";
            }
        }

        protected void gvCourses_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}