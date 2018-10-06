using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


     public AddStudent(string StudentName, int UniversityID, string Signature, string Password, string mager, int SectionID, string Phone, int AcademicAdvisorID)

        {
            Studnets st1 = new Studnets();
         int Result =   st1.AddStudnets( StudentName,  UniversityID,  Signature, Password, mager, SectionID, Phone, AcademicAdvisorID) 
;
            if(Result== 1)
            {
     // lblResult.Text = = "تم ادخال الطالب بنجاح" ;
            }

            else
            {
                // lblResult.Text = = "لم يتم  ادخال الطالب " ;
            }

        }

    }
}