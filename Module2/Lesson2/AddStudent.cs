using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lesson2
{
    public partial class AddStudent : Form
    {
        public AddStudent()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            //获取输入框中输入信息
            string StuName = txtStuName.Text.Trim();
            string StuNum = txtStuNum.Text.Trim();
            string StuClass = txtStuClass.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string StuPhone = txtStuPhone.Text.Trim();
            //获取单选按钮中被选中的按钮的值
            string Gender = radioB.Checked ? "男" : "女";
            int StuAge;
            //获取输入的年龄
            Int32.TryParse(txtStuAge.Text.Trim(), out StuAge);
            //判断姓名，学号，班级，学科是否为空
            if (String.IsNullOrEmpty(StuName) || String.IsNullOrEmpty(StuNum) || String.IsNullOrEmpty(StuClass) || String.IsNullOrEmpty(subject))
            {
                MessageBox.Show("姓名，学号，班级，学科都不能为空");
            }
            else
            {
                //创建连接对象
                SqlConnection con = new SqlConnection("server=.;database=itcast;uid=sa;pwd=123456");
                string sql = string.Format("insert into Student  values('{0}','{1}','{2}','{3}',{4},'{5}','{6}')", StuNum, StuName, StuClass, subject, StuAge, StuPhone, Gender);
                //创建执行命令对象
                SqlCommand cmd = new SqlCommand(sql, con);
                //打开连接
                con.Open();
                //返回执行影响的行数
                int count = cmd.ExecuteNonQuery();
                //关闭连接
                con.Close();
                //返回值大于0时弹出“添加成功”
                if (count > 0)
                {
                    MessageBox.Show("执行成功");
                }
                //关闭当前对话框
                this.Close();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {

            txtStuAge.Text = "";
            txtStuClass.Text = "";
            txtStuName.Text = "";
            txtStuNum.Text = "";
            txtStuPhone.Text = "";
            txtSubject.Text = "";
        }

        private void AddStudent_Load(object sender, EventArgs e)
        {

        }
    }
}
