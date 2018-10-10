using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;

namespace WebApplication1
{
    public partial class AltenativeSubject : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Session["ID"].ToString());
                fillDataForm(ID);
                fillddl();
            }

        }

        private void fillddl()
        {
            RegistredCourses obj1 = new RegistredCourses();
            int ID = Convert.ToInt32(Session["ID"].ToString());
            DataTable tb1 = obj1.dtSearchNotRegisterSubject(ID);

            Subjects obj2 = new Subjects();
            DataTable tb2 = obj2.dtSearchStudentSubjectNotRegester(ID);



            ddlAlternativeCourse1.DataSource = tb2;
            ddlAlternativeCourse1.DataTextField = "SubjectName";
            ddlAlternativeCourse1.DataValueField = "SubjectID";
            ddlAlternativeCourse1.DataBind();
             

            ddlCourse1.DataSource = tb1;
            ddlCourse1.DataTextField = "SubjectName";
            ddlCourse1.DataValueField = "SubjectID";
            ddlCourse1.DataBind();

            ddlCourse1.Items.Insert(0, new ListItem("<اختر مادة>", "0"));
            ddlAlternativeCourse1.Items.Insert(0, new ListItem("<اختر مادة>", "0"));
        }

        private void fillDataForm(int ID)
        {
            Studnets objStu = new Studnets();
            DataRow Stu = objStu.drSearchStudent(ID);
            if (Stu != null)
            {
                labCollage.Text = Stu["CollageName"].ToString();
                labNameStudent.Text = Stu["StudentName"].ToString();
                labNumStudent.Text = Stu["UniversityID"].ToString();
                labSection.Text = Stu["SectionName"].ToString();
                labMager.Text = Stu["Mager"].ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Define Avariable 
            int CourseNum1 = 0;
            int AlternativeCourseNum1 = 0;
            String TypeCouseNum1 = "";
            String Reason = "";
            int HourCourse1 = 0;
            int AlternativeCourseHourNum1 = 0;
            //Check input Data
            if (txtNumberCourse1.Text != String.Empty)
                CourseNum1 = Convert.ToInt32(txtNumberCourse1.Text.ToString());
           
            if (txtAlternativeNum1C1.Text != String.Empty)
                AlternativeCourseNum1 = Convert.ToInt32(txtAlternativeNum1C1.Text.ToString());
            if (ddlTypeCourse1.Text != String.Empty)
                TypeCouseNum1 = ddlTypeCourse1.Text.ToString();
            if (txtNumHoursC1.Text != String.Empty)
                HourCourse1 = Convert.ToInt32(txtNumHoursC1);
            if (txtAlternativeHoursC1.Text != String.Empty)
                AlternativeCourseHourNum1 = Convert.ToInt32(txtAlternativeHoursC1);
            if (txtReason.Text != String.Empty)
                Reason = txtReason.Text.ToString();


        }

        protected void ddlCourse1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCourse1.SelectedIndex != 0 && ddlCourse1.SelectedIndex != -1)
            {
                txtNumberCourse1.Text = ddlCourse1.SelectedValue.ToString();
            }
        }

        protected void ddlAlternativeCourse1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlAlternativeCourse1.SelectedIndex!=0 && ddlAlternativeCourse1.SelectedIndex != -1)
            {
                txtAlternativeNum1C1.Text = ddlAlternativeCourse1.SelectedValue.ToString();
            }
        


        }
    }
}