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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO:  这行代码将数据加载到表“student._Student”中。您可以根据需要移动或删除它。
            this.studentTableAdapter.Fill(this.student._Student);
            DataGridViewDataLoad();
            ComboBoxDataLoad();

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        private void DataGridViewDataLoad(string sql = "select * from Student")
        {
            //创建SqlConnection、SqlDataAdapter和 DataSet的对象
            SqlConnection con = new SqlConnection("server=.; Initial Catalog=itcast;Integrated Security =true;");
            SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            con.Open();
            //获取并填充数据
            adapter.Fill(ds);
            con.Close();
            //将获取的数据设置为控件的数据源
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void cmbSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ComboBoxDataLoad()
        {
            //清空ComboBox，防止重复绑定
            cmbSubject.Items.Clear();
            cmbSubject.Items.Add("全部");
            cmbSubject.SelectedIndex = 0;
            SqlConnection con = new SqlConnection("server=.;database=itcast;uid=sa;pwd=123456");
            string sql = "select distinct subject from Student";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            //reader的HasRows属性表示是否有返回数据
            if (reader.HasRows)
            {
                //Read()方法表示读取下一条记录，读到数据返回True,否则返回false
                while (reader.Read())
                {
                    //将读取的第一列数据添加的下拉列表项中
                    cmbSubject.Items.Add(reader[0]);
                }
            }
            //关闭对象
            reader.Close();
            con.Close();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            //获取所有需查询的字段值。
            string stuNum = txtStuNum.Text.Trim();
            string stuName = txtStuName.Text.Trim();
            string stuClass = txtStuClass.Text.Trim();
            string subject = cmbSubject.Text.Trim() == "全部" ? "" : cmbSubject.Text.Trim();
            //无法确定查询条件时，可以先加一个where 1=1的查询条件
            StringBuilder sql = new StringBuilder("select * from Student where 1=1");
            //查询的学号不为空时，就在原始的sql语句后加一个查询条件
            if (!String.IsNullOrEmpty(stuNum))
            {
                sql.Append(" and stuNum=" + stuNum);
            }
            //查询的姓名等不为空时，就在sql语句后加一个模糊匹配查询条件
            if (!String.IsNullOrEmpty(stuName))
            {
                sql.Append(" and stuName like '%" + stuName + "%'");
            }
            if (!String.IsNullOrEmpty(stuClass))
            {
                sql.Append(" and stuClass like '%" + stuClass + "%'");
            }
            if (!String.IsNullOrEmpty(subject))
            {
                sql.Append(" and subject like '%" + subject + "%'");
            }
            //重新加载数据
            DataGridViewDataLoad(sql.ToString());
        }

        private void btnAdds_Click(object sender, EventArgs e)
        {
            //创建一个AddStudent类型的窗体
            AddStudent addStudent = new AddStudent();
            //弹出窗体
            addStudent.ShowDialog();
            //弹出框关闭后重新加载数据
            ComboBoxDataLoad();
            DataGridViewDataLoad();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //获取点击的行的第一列数据
            int id = Convert.ToInt32(this.dataGridView1.Rows[e.RowIndex].Cells[0].Value);
            UpdateStudent updataStudent = new UpdateStudent(id);
            updataStudent.ShowDialog();
            //重新加载Form1窗体中的数据
            ComboBoxDataLoad();
            DataGridViewDataLoad();
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //创建一个弹出框 MessageBoxButtons.OKCancel表示窗体中包含确定和取消按钮
            DialogResult result = MessageBox.Show("确定删除该数据？", "确定删除？", MessageBoxButtons.OKCancel);
            if (result == DialogResult.OK)
            {
                //获取要删除的数据的主键ID
                int id = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value);
                SqlConnection con = new SqlConnection("server=.;database=itcast;uid=sa;pwd=123456");
                string sql = "delete Student where ID=" + id;
                //创建执行命令对象并打开连接执行操作
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.ExecuteNonQuery();
                //关闭连接
                con.Close();
            }
            //重新加载数据
            ComboBoxDataLoad();
            DataGridViewDataLoad();
        }

    }
}
