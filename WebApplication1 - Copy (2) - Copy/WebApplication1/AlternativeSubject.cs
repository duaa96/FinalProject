using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public class AlternativeSubject
{
    private string Connectionstring = ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();
   
    public int AddAlternativeSubject(int StudentID, int Subject1ID, string Subject2Type, int NewSubject, string Description, int DeputyAcademic, int HeadAccept, int DeanAccept, int RegestrationAccept, int ApplicationID)
    {
        string Query = "INSERT INTO AlternativeSubject( StudentID , Subject1ID , Subject2Type ,NewSubject ,Description , DeputyAcademic ,  HeadAccept , DeanAccept,RegestrationAccept, ApplicationID )VALUES(@StudentID  ,  @Subject1ID , @Subject2Type , @NewSubject ,  @Description ,  @DeputyAcademic ,  @HeadAccept, @DeanAccept,@RegestrationAccept, @ApplicationID ) ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@StudentID", StudentID);//This is Parameter
        Command.Parameters.AddWithValue("@Subject1ID", Subject1ID);
        Command.Parameters.AddWithValue("@Subject2Type", Subject2Type);
        Command.Parameters.AddWithValue("@NewSubject", NewSubject);
        Command.Parameters.AddWithValue("@Description", Description);
        Command.Parameters.AddWithValue("@DeputyAcademic", DeputyAcademic);
        Command.Parameters.AddWithValue("@HeadAccept", HeadAccept);
        Command.Parameters.AddWithValue("@DeanAccept", DeanAccept);//This is Parameter
        Command.Parameters.AddWithValue("@RegestrationAccept", RegestrationAccept);
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);
        int x=Command.ExecuteNonQuery();
        Connection.Close();
        return x;
    }




    public void UpdateAlternativeSubject(int ID, int StudentID, int Subject1ID, string Subject2Type, int NewSubject, string Description, int DeputyAcademic, int HeadAccept, int DeanAccept, int RegestrationAccept, int ApplicationID)
    {
        string Query = "Update  AlternativeSubject  set StudentID = @StudentID ,Subject1ID = @Subject1ID  , Subject2Type= @Subject2Type ,NewSubject = @NewSubject ,Description =@Description ,DeputyAcademic =@DeputyAcademic ,HeadAccept = @HeadAccept ,DeanAccept =@DeanAccept ,RegestrationAccept =@RegestrationAccept,ApplicationID =@ApplicationID where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.Parameters.AddWithValue("@StudentID", StudentID);
        Command.Parameters.AddWithValue("@Subject1ID", Subject1ID);//This is Parameter
        Command.Parameters.AddWithValue("@Subject2Type", Subject2Type);
        Command.Parameters.AddWithValue("@NewSubject", NewSubject);

        Command.Parameters.AddWithValue("@Description", Description);
        Command.Parameters.AddWithValue("@DeputyAcademic", DeputyAcademic);
        Command.Parameters.AddWithValue("@HeadAccept", HeadAccept);
        Command.Parameters.AddWithValue("@DeanAccept", DeanAccept);
        Command.Parameters.AddWithValue("@RegestrationAccept", RegestrationAccept);
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);
        Command.ExecuteNonQuery();
        Connection.Close();
    }
    public void DeleteAlternativeSubject(int ID)
    {
        string Query = "delete from  AlternativeSubject where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.ExecuteNonQuery();
        Connection.Close();
    }



}