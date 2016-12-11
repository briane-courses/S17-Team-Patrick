﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using SOFENGG_Order_Request_Document.Model;
using SOFENGG_Order_Request_Document.Presenter;
using SOFENGG_Order_Request_Document.View.Order.Interface;

namespace SOFENGG_Order_Request_Document.View.Order
{
    public partial class InfoAcadConfirm : System.Web.UI.Page, IInfoAcadDeView
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["StudentInfo"]["Id"] == null)
                {
                    Response.Redirect("~/View/Order/Error.aspx");
                }

                StudentInfoId = int.Parse(Request.Cookies["StudentInfo"]["Id"]);
                DisplayAllStudentDegree();

            }
            catch (NullReferenceException)
            {
                Response.Redirect("~/View/Order/Error.aspx");
            }

        }


        private void DisplayAllStudentDegree()
        {
            int studentDegreeNumber = int.Parse(Request.Cookies["StudentInfo"]["StudentDegreeNum"]);
            InfoAcadDePresenter presenter = new InfoAcadDePresenter(this);
            StudentDegree[] studentDegree = presenter.GetStudentDegreeList();
            List<StudentDegree> studentDegreeList = new List<StudentDegree>();
            for (int i = 0; i < studentDegreeNumber; i++)
            {
                var cookie = Request.Cookies["AcadInformation" + i];
                studentDegreeList.Add(new StudentDegree()
                {
                    AdmittedAs = (AdmissionEnum)int.Parse(cookie["AdmittedAs"]),
                    IdStudent = int.Parse(cookie["IdStudent"]),
                    Degree = presenter.GetOneDegree(int.Parse(cookie["Degree"])),
                    YearAdmitted = int.Parse(cookie["YearAdmitted"]),
                    Id = i,
                    StudentInfoId = int.Parse(Request.Cookies["StudentInfo"]["Id"])

                });
            }

            rptInfoAcadConfirm.DataSource = studentDegreeList;
            rptInfoAcadConfirm.DataBind();
        }

        /* CLICK EVENTS */

        protected void GoToInfoMailDe(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Order/InfoMailDe.aspx");
        }

        protected void DeleteStudentDegree(object sender, EventArgs e)
        {
            Button btn = sender as Button;

        }

        protected void EditStudentDegree(object sender, EventArgs e)
        {
            //HttpCookie editCookie = new HttpCookie("EditCookie");
            //editCookie["StudentDegree"] = gets the id of selected 
            Response.Redirect("~/View/Order/InfoAcadDe.aspx");
        }

        public void AddStudentDegree(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Order/InfoAcadDe.aspx");
        }

        public int StudentInfoId { get; set; }
        public int IdNumber { get; set; }
        public int CampusAttended { get; set; }
        public char Level { get; set; }
        public bool IsGraduate { get; set; }
        public string Degree { get; set; }
        public char AdmittedAs { get; set; }
        public int YearAdmitted { get; set; }
        public StudentDegree[] StudentDegreeList { get; set; }
    }
}