using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace HeChuyenGia_Nhom2
{
    class ketnoi
    {
        SqlConnection con;
        public ketnoi()
        {
            con = new SqlConnection(@"Data Source=ADMIN\SQLEXPRESS;Initial Catalog=Tuvandienthoai;User ID=sa; Password=123456");
            con.Open();
        
        }
        public DataTable getTable(string sql)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            da.Fill(dt);
            return dt;
        
        }
        public void thuchien(string sql)
        {
            SqlCommand cmd;
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
    }
}
