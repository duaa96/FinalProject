﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if(txtUsername.Text != string.Empty && txtPassword.Text != string.Empty && (rdbEmployee.Checked ==true || rdbStudent.Checked == true ))
            {

                if(rdbEmployee.Checked == true)
                {
                    try
                    {
                        int strUsername = Convert.ToInt16(txtUsername.Text);
                        string strPassword = txtPassword.Text;

                        con.Open();
                        string qry = "select * from Employees where EmployeeID='" + strUsername + "' and password='" + strPassword + "'";
                        SqlCommand cmd = new SqlCommand(qry, con);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            Session["ID"] = "1";
                            Response.Redirect("homeEmplyee.aspx");
                            lbWrong.Text = "Login Sucess......!!";
                            lbWrong.Visible = true;
                        }
                        else
                        {
                            lbWrong.Text = "خطأ في كلمة اسم المستخدم او كلمة السر";
                            lbWrong.Visible = true;

                        }
                        con.Close();


                    }

                    catch (Exception ex)
                    {
                  Response.Write(ex.Message);
                    }



                }
                else
                {
                    try
                    {
                        int strUsername = Convert.ToInt16(txtUsername.Text);
                        string strPassword = txtPassword.Text;

                        con.Open();
                        string qry = "select * from Students where UniversityID='" + strUsername + "' and Password='" + strPassword + "'";
                        SqlCommand cmd = new SqlCommand(qry, con);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            Session["ID"] = "1";
                            Response.Redirect("Absenceexcuse.aspx");
                            lbWrong.Text = "Login Sucess......!!";
                            lbWrong.Visible = true;
                        }
                        else
                        {
                            lbWrong.Text = "خطأ في كلمة اسم المستخدم او كلمة السر";
                            lbWrong.Visible = true;

                        }
                        con.Close();


                    }

                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }



                }

            }




            
            else
            {
                lbWrong.Text = "يرجى تعبئة جميع البيانات ";
                lbWrong.Visible = true;

            }
        }
    }
}