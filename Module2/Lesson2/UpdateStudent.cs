using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Lesson2
{
    public partial class UpdateStudent : Form
    {
        public int ID;
        public UpdateStudent(int Id)
        {
            ID = Id;
            InitializeComponent();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void UpdateStudent_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.;database=itcast;uid=sa;pwd=123456");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select * from Student where ID=" + ID;
            con.Open();
            SqlDataReader dataReader = cmd.ExecuteReader();
            //获取数据并填充到页面
            if (dataReader.HasRows)
            {
                dataReader.Read();
                this.lblID.Text = ID.ToString();
                //获取每一列对应的数据加载到对应的位置
                this.txtStuClass.Text = dataReader.GetString(3);
                this.txtStuName.Text = dataReader.GetString(2);
                this.txtStuNum.Text = dataReader.GetString(1);
                this.txtSubject.Text = dataReader.GetString(4);
                this.txtStuAge.Text = Convert.IsDBNull(dataReader[5]) ? "" : dataReader.GetInt32(5).ToString();
                this.txtStuPhone.Text = Convert.IsDBNull(dataReader[6]) ? "" : dataReader.GetString(6);
                if (!Convert.IsDBNull(dataReader[7]) && dataReader.GetString(7) == "女")
                {
                    this.radioG.Checked = true;
                }
                else
                {
                    this.radioB.Checked = true;
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            int Id = Int32.Parse(lblID.Text);
            string StuName = txtStuName.Text.Trim();
            string StuNum = txtStuNum.Text.Trim();
            string StuClass = txtStuClass.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string Gender = radioB.Checked ? "男" : "女";
            string StuPhone = txtStuPhone.Text.Trim();
            int StuAge;
            Int32.TryParse(txtStuAge.Text.Trim(), out StuAge);
            //判断是否能执行更新操作
            if (String.IsNullOrEmpty(StuName) || String.IsNullOrEmpty(StuNum) || String.IsNullOrEmpty(StuClass) || String.IsNullOrEmpty(subject))
            {
                MessageBox.Show("姓名，学号，班级，学科都不能为空");
            }
            else
            {
                SqlConnection con = new SqlConnection("server=.;database=itcast;uid=sa;pwd=123456");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = string.Format("update Student set StuNum='{0}',StuName='{1}',StuClass='{2}',subject='{3}',StuAge={4},StuPhone='{5}',StuGender='{6}' where ID={7}", StuNum, StuName, StuClass, subject, StuAge, StuPhone, Gender, Id);
                con.Open();
                int count = cmd.ExecuteNonQuery();
                con.Close();
                if (count > 0)
                {
                    MessageBox.Show("修改成功");
                }
                this.Close();
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtStuAge.Text = "";
            txtStuClass.Text = "";
            txtStuName.Text = "";
            txtStuNum.Text = "";
            txtStuPhone.Text = "";
            txtSubject.Text = "";
        }
    }
}
