using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_lesson6_mon
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //fill the grid
            if (!IsPostBack)
            {
                GetStudents();
            }
        }
 


        protected void GetStudents()
        {

            //connect using our connection string from web.config and EF context class
            using (DefaultConnection conn = new DefaultConnection())
            {
                //use link to query the Students model
                var deps = from d in conn.Students
                           select d;

                //bind the query result to the gridview
                grdStudents.DataSource = deps.ToList();
                grdStudents.DataBind();
            }
        }

        protected void grdStudents_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //connect
            using (DefaultConnection conn = new DefaultConnection())
            {
                //get the selected StudentID
                Int32 DepartmentID = Convert.ToInt32(grdStudents.DataKeys[e.RowIndex].Values["StudentID"]);

                var d = (from dep in conn.Departments
                         where dep.DepartmentID == DepartmentID
                         select dep).FirstOrDefault();

                //process the delete
                conn.Departments.Remove(d);
                conn.SaveChanges();

                //update the grid
                GetStudents();
            }
        }
    }
}

   }
}