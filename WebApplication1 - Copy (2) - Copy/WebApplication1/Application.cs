using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public class Application
{
    private string Connectionstring = ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();


    public int  AddApplication(string ApplicationName, int Enable,string ExpireDate)
    {
        string Query = "INSERT INTO Application(  ApplicationName  , Enable,ExpireDate )VALUES(@ApplicationName  ,  @Enable,@ExpireDate  ) ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ApplicationName", ApplicationName);//This is Parameter
        Command.Parameters.AddWithValue("@Enable", Enable);
        Command.Parameters.AddWithValue("@ExpireDate", ExpireDate);

       int x= Command.ExecuteNonQuery();
        Connection.Close();
        return x;
    }


    public void UpdateApplication(int ApplicationID, string ApplicationName, int Enable,string ExpireDate)
    {
        string Query = "Update  Application set  ApplicationName=@ApplicationName ,Enable =@Enable ,ExpireDate=@ExpireDate  where ApplicationID = @ApplicationID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);
        Command.Parameters.AddWithValue("@ApplicationName", ApplicationName);
        Command.Parameters.AddWithValue("@Enable", Enable);//This is Parameter
        Command.Parameters.AddWithValue("@ExpireDate", ExpireDate);//This is Parameter

        Command.ExecuteNonQuery();
        Connection.Close();
    }
    public void DeleteApplication(int ApplicationID)
    {
        string Query = "delete from  Application where ApplicationID = @ApplicationID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ApplicationID", ApplicationID);
        Command.ExecuteNonQuery();
        Connection.Close();
    }
}