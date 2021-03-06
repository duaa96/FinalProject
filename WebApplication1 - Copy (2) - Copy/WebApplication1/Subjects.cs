﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public class Subjects
{
    private string Connectionstring = ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();


    public int AddSubjects(int SubjectID, string SubjectName, int SectionID, string Type, int Hours)
    {
        string Query = "INSERT INTO Subjects(SubjectID,SubjectName  , SectionID ,Type ,Hours )VALUES(@SubjectID,@SubjectName, @SectionID,@Type ,@Hours) ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@SubjectID", SubjectID);//This is Parameter
        Command.Parameters.AddWithValue("@SubjectName", SubjectName);
        Command.Parameters.AddWithValue("@SectionID", SectionID);
        Command.Parameters.AddWithValue("@Type", Type);
        Command.Parameters.AddWithValue("@Hours", Hours);
       int x= Command.ExecuteNonQuery();
        Connection.Close();
        return x;
    }


    public void UpdateSubjects(int ID, int SubjectID, string SubjectName, int SectionID, string Type, int Hours)
    {
        string Query = "Update  Subjects set SubjectID = @SubjectID ,SubjectName = @SubjectName  , SectionID= @SectionID ,Type = @Type ,Hours =@Hours where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.Parameters.AddWithValue("@SubjectID", SubjectID);//This is Parameter
        Command.Parameters.AddWithValue("@SubjectName", SubjectName);
        Command.Parameters.AddWithValue("@SectionID", SectionID);
        Command.Parameters.AddWithValue("@Type", Type);
        Command.Parameters.AddWithValue("@Hours", Hours);
        Command.ExecuteNonQuery();
        Connection.Close();
    }

    public void DeleteSubjects(int ID)
    {
        string Query = "delete from  Subjects where ID = @ID ";
        SqlConnection Connection = new SqlConnection(Connectionstring);
        SqlCommand Command = new SqlCommand(Query, Connection);

        Command.CommandType = CommandType.Text;
        Command.Parameters.AddWithValue("@ID", ID);
        Command.ExecuteNonQuery();
        Connection.Close();
    }



}