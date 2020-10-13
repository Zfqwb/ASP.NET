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

namespace Lesson3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        //7.加载文章分类到TreeView
        private void Form1_Load(object sender, EventArgs e)
        {
            //openFileDialog1.Multiselect = true;
            List<Category> listRoot = GetDataByParentId(-1);
            //1.加载类别信息到TreeView
            LoadCategory(listRoot, treeView1.Nodes);
        }
        //根据指定的父Id查询当前的子类别
        //从数据表Category中查询数据并保存到Category对象中，然后将该对象添加到List集合中
        private List<Category> GetDataByParentId(int pid)
        {
            List<Category> list = new List<Category>();
            string sql = "select tid,tname from Category where tparentId=@pid";
            using (SqlDataReader reader = SqlHelper.ExecuteReader(sql, new SqlParameter("@pid", pid)))
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Category model = new Category();
                        model.TId = reader.GetInt32(0);
                        model.TName = reader.GetString(1);
                        list.Add(model);
                    }
                }
            }
            return list;
            // GetDataByParentId()方法的返回值为Category类型的泛型集合，当获取到数据后就需要循环遍历然后加载到TreeView控件上
        }

        //加载类别信息到TreeView
        //获取数据库中的数据并在TreeView控件中创建节点
        private void LoadCategory(List<Category> listRoot, TreeNodeCollection treeNodeCollection)
        {
            //循环集合listRoot中的每条数据加载到treeNodeCollection
            foreach (var mode in listRoot)
            {
                TreeNode tnode = treeNodeCollection.Add(mode.TName);
                //tnode就是刚刚增加的节点
                tnode.Tag = mode.TId;
                LoadCategory(GetDataByParentId(mode.TId), tnode.Nodes);
            }
        }

        //加载文章名称
        private List<ContentInfo> GetContentInfoByCategoryId(int cateId)
        {
            List<ContentInfo> list = new List<ContentInfo>();
            string sql = "select did,dName from ContentInfo where dtid=@tid";
            using (SqlDataReader reader = SqlHelper.ExecuteReader(sql, new SqlParameter("@tid", cateId)))
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        ContentInfo model = new ContentInfo();
                        model.DId = reader.GetInt32(0);
                        model.DName = reader.GetString(1);
                        list.Add(model);
                    }
                }
            }
            return list;
        }
        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            listBox1.Items.Clear();
            textBox1.Text = string.Empty;
            //当选中某个项时触发该事件
            //1。获取当前选中项的id
            int tid = (int)treeView1.SelectedNode.Tag;
            List<ContentInfo> list = GetContentInfoByCategoryId(tid);
            foreach (ContentInfo item in list)
            {
                listBox1.Items.Add(item);
                listBox1.DisplayMember = "DName";
            }
        }

        //展示文章内容
        private string GetContentByDid(int did)
        {
            string sql = "select dContent from ContentInfo where did=@did";
            string content = Convert.ToString(SqlHelper.ExecuteScalar(sql, new SqlParameter("@did", did)));
            return content;
        }

        private void listBox1_MouseDoubleClick(object sender, MouseEventArgs e)
        {

            if (listBox1.SelectedItem != null)
            {
                ContentInfo model = listBox1.SelectedItem as ContentInfo;
                if (model != null)
                {
                    int did = model.DId;
                    //这里要根据文章的Id,查询文章的内容
                    textBox1.Text = GetContentByDid(did);
                }
            }
        }


    }
}
