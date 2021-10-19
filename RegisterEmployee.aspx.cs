using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebEmpReg
{
    public partial class RegisterEmployee : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RoshanSQL;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

           
            
                FillGridView();
           
            

        }
        protected void Button1_Click2(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            hfContactID.Value = "";
            EmployeeName.Text = DropDownList1.SelectedItem.Text = Salary.Text = Email.Text = Mobile.Text = DropDownList2.SelectedItem.Text = Manager.Text = "";
            btnReset.Text = "Reset";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("Contactupdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Id", (hfContactID.Value == "" ? 0 : Convert.ToInt32(hfContactID.Value)));
            sqlCmd.Parameters.AddWithValue("@EmployeeName", EmployeeName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Designation", DropDownList1.SelectedItem.Text.Trim());
            DropDownList1.Items.Add(Designation.Text);
            DropDownList2.Items.Add(Qualification.Text);
            sqlCmd.Parameters.AddWithValue("@Salary", Salary.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Mobile", Mobile.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Qualification", DropDownList2.SelectedItem.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Manager", Manager.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();

            FillGridView();
        }
        void FillGridView()
        {


            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("viewall", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtb1 = new DataTable();
            sqlDa.Fill(dtb1);
            sqlCon.Close();

            GridViewData.DataSource = dtb1;
            GridViewData.DataBind();
        }
        protected void Button2_Click2(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("Procedure1", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@Id", Id);
            DataTable dtb1 = new DataTable();
            sqlDa.Fill(dtb1);
            sqlCon.Close();
            hfContactID.Value = Id.ToString();
            EmployeeName.Text = dtb1.Rows[0]["EmployeeName"].ToString();
            DropDownList1.SelectedItem.Text = dtb1.Rows[0]["Designation"].ToString();
            Salary.Text = dtb1.Rows[0]["Salary"].ToString();
            Email.Text = dtb1.Rows[0]["Email"].ToString();
            Mobile.Text = dtb1.Rows[0]["Mobile"].ToString();
            DropDownList2.SelectedItem.Text = dtb1.Rows[0]["Qualification"].ToString();
            Manager.Text = dtb1.Rows[0]["Manager"].ToString();

        }




        protected void InkView2_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int Id = Convert.ToInt32(GridViewData.Rows[rowindex].Cells[0].Text);
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("Procedure2", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Id", Id);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* String strQuery = "SELECT distinct (Designation) FROM table01";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = sqlCon;
           
          
                sqlCon.Open();
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "Designation";
                DropDownList1.DataValueField = "Designation";
                DropDownList1.DataBind();
            }*/
    }

} 
   
}