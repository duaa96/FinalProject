using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public class DropSemester
{
    private string Connectionstring = ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();


   public int  AddDropSemester(int StudentID, string Description, string Date, string AcademicAdvisor_Descr, int AcademicAdvisorAccept, string HeadDescription, int HeadAccept, string DeanDescription, int DeanAccept, string DeputyAcademic_Descr, int DeputyAcademicAccept, string RegestrationDescr, int ApplicationID)
    {
        string Query = "INSERT INTO DropSemester (  StudentID,Description, Date, AcademicAdvisor_Descr, AcademicAdvisorAccept, HeadDescription, HeadAccept, DeanDescription, DeanAccept, DeputyAcademic_Descr, DeputyAcademicAccept, RegestrationDescr, ApplicationID) VALUES( @StudentID,@Description, @Date,@AcademicAdvisor_Descr, @AcademicAdvisorAccept, @HeadDescription, @HeadAccept, @DeanDescription, @DeanAccept, @DeputyAcademic_Descr, @DeputyAcademicAccept, @RegestrationDescr, @ApplicationID  ) ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@StudentID", StudentID);//This is Parameter
        Command.Parameters.AddWithValue("@Description", Description);//This is Parameter
        Command.Parameters.AddWithValue("@AcademicAdvisor_Descr", AcademicAdvisor_Descr);//This is Parameter
        Command.Parameters.AddWithValue("@AcademicAdvisorAccept", AcademicAdvisorAccept);//This is Parameter
        Command.Parameters.AddWithValue("@HeadDescription", HeadDescription);//This is Parameter
        Command.Parameters.AddWithValue("@HeadAccept", HeadAccept);//This is Parameter
        Command.Parameters.AddWithValue("@DeanDescription", DeanDescription);//This is Parameter
        Command.Parameters.AddWithValue("@DeanAccept", DeanAccept);//This is Parameter
        Command.Parameters.AddWithValue("@DeputyAcademic_Descr", DeputyAcademic_Descr);//This is Parameter
        Command.Parameters.AddWithValue("@DeputyAcademicAccept", DeputyAcademicAccept);//This is Parameter
        Command.Parameters.AddWithValue("@RegestrationDescr", RegestrationDescr);//This is Parameter
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);//This is Parameter

      int x= Command.ExecuteNonQuery();
        Connection.Close();
        return x;
    }
    public void UpdateDropSemester(int ID, int StudentID, string Description, string Date, string AcademicAdvisor_Descr, int AcademicAdvisorAccept, string HeadDescription, int HeadAccept, string DeanDescription, int DeanAccept, string DeputyAcademic_Descr, int DeputyAcademicAccept, string RegestrationDescr, int ApplicationID)
    {
        string Query = "Update  DropSemester set  Position =@Position   where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.Parameters.AddWithValue("@StudentID", StudentID);//This is Parameter
        Command.Parameters.AddWithValue("@Description", Description);//This is Parameter
        Command.Parameters.AddWithValue("@AcademicAdvisor_Descr", AcademicAdvisor_Descr);//This is Parameter
        Command.Parameters.AddWithValue("@AcademicAdvisorAccept", AcademicAdvisorAccept);//This is Parameter
        Command.Parameters.AddWithValue("@HeadDescription", HeadDescription);//This is Parameter
        Command.Parameters.AddWithValue("@HeadAccept", HeadAccept);//This is Parameter
        Command.Parameters.AddWithValue("@DeanDescription", DeanDescription);//This is Parameter
        Command.Parameters.AddWithValue("@DeanAccept", DeanAccept);//This is Parameter
        Command.Parameters.AddWithValue("@DeputyAcademic_Descr", DeputyAcademic_Descr);//This is Parameter
        Command.Parameters.AddWithValue("@DeputyAcademicAccept", DeputyAcademicAccept);//This is Parameter
        Command.Parameters.AddWithValue("@RegestrationDescr", RegestrationDescr);//This is Parameter
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);//This is Parameter



        Command.ExecuteNonQuery();
        Connection.Close();
    }
    public void DeleteDropSemester(int ID)
    {
        string Query = "delete from  DropSemester where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.ExecuteNonQuery();
        Connection.Close();
    }
}