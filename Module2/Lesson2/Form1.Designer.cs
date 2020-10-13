namespace Lesson2
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtStuNum = new System.Windows.Forms.TextBox();
            this.txtStuName = new System.Windows.Forms.TextBox();
            this.txtStuClass = new System.Windows.Forms.TextBox();
            this.cmbSubject = new System.Windows.Forms.ComboBox();
            this.btnSelect = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuNumDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuClassDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.subjectDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuAgeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuPhoneDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stuGenderDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.studentBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.student = new Lesson2.Student();
            this.studentTableAdapter = new Lesson2.StudentTableAdapters.StudentTableAdapter();
            this.btnAdds = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.studentBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.student)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "学号";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(276, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "姓名";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(541, 58);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "班级";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(777, 64);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(37, 15);
            this.label4.TabIndex = 3;
            this.label4.Text = "学科";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // txtStuNum
            // 
            this.txtStuNum.Location = new System.Drawing.Point(114, 54);
            this.txtStuNum.Name = "txtStuNum";
            this.txtStuNum.Size = new System.Drawing.Size(100, 25);
            this.txtStuNum.TabIndex = 4;
            // 
            // txtStuName
            // 
            this.txtStuName.Location = new System.Drawing.Point(370, 54);
            this.txtStuName.Name = "txtStuName";
            this.txtStuName.Size = new System.Drawing.Size(100, 25);
            this.txtStuName.TabIndex = 5;
            // 
            // txtStuClass
            // 
            this.txtStuClass.Location = new System.Drawing.Point(621, 54);
            this.txtStuClass.Name = "txtStuClass";
            this.txtStuClass.Size = new System.Drawing.Size(100, 25);
            this.txtStuClass.TabIndex = 6;
            // 
            // cmbSubject
            // 
            this.cmbSubject.FormattingEnabled = true;
            this.cmbSubject.Location = new System.Drawing.Point(849, 57);
            this.cmbSubject.Name = "cmbSubject";
            this.cmbSubject.Size = new System.Drawing.Size(121, 23);
            this.cmbSubject.TabIndex = 7;
            this.cmbSubject.SelectedIndexChanged += new System.EventHandler(this.cmbSubject_SelectedIndexChanged);
            // 
            // btnSelect
            // 
            this.btnSelect.Location = new System.Drawing.Point(1013, 58);
            this.btnSelect.Name = "btnSelect";
            this.btnSelect.Size = new System.Drawing.Size(75, 23);
            this.btnSelect.TabIndex = 8;
            this.btnSelect.Text = "查询";
            this.btnSelect.UseVisualStyleBackColor = true;
            this.btnSelect.Click += new System.EventHandler(this.btnSelect_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.stuNumDataGridViewTextBoxColumn,
            this.stuNameDataGridViewTextBoxColumn,
            this.stuClassDataGridViewTextBoxColumn,
            this.subjectDataGridViewTextBoxColumn,
            this.stuAgeDataGridViewTextBoxColumn,
            this.stuPhoneDataGridViewTextBoxColumn,
            this.stuGenderDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.studentBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(39, 87);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 27;
            this.dataGridView1.Size = new System.Drawing.Size(1049, 317);
            this.dataGridView1.TabIndex = 9;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.ReadOnly = true;
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // stuNumDataGridViewTextBoxColumn
            // 
            this.stuNumDataGridViewTextBoxColumn.DataPropertyName = "StuNum";
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuNumDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle2;
            this.stuNumDataGridViewTextBoxColumn.HeaderText = "学号";
            this.stuNumDataGridViewTextBoxColumn.Name = "stuNumDataGridViewTextBoxColumn";
            this.stuNumDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // stuNameDataGridViewTextBoxColumn
            // 
            this.stuNameDataGridViewTextBoxColumn.DataPropertyName = "StuName";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuNameDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle3;
            this.stuNameDataGridViewTextBoxColumn.HeaderText = "姓名";
            this.stuNameDataGridViewTextBoxColumn.Name = "stuNameDataGridViewTextBoxColumn";
            this.stuNameDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // stuClassDataGridViewTextBoxColumn
            // 
            this.stuClassDataGridViewTextBoxColumn.DataPropertyName = "StuClass";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuClassDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle4;
            this.stuClassDataGridViewTextBoxColumn.HeaderText = "班级";
            this.stuClassDataGridViewTextBoxColumn.Name = "stuClassDataGridViewTextBoxColumn";
            this.stuClassDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // subjectDataGridViewTextBoxColumn
            // 
            this.subjectDataGridViewTextBoxColumn.DataPropertyName = "subject";
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.subjectDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle5;
            this.subjectDataGridViewTextBoxColumn.HeaderText = "学科";
            this.subjectDataGridViewTextBoxColumn.Name = "subjectDataGridViewTextBoxColumn";
            this.subjectDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // stuAgeDataGridViewTextBoxColumn
            // 
            this.stuAgeDataGridViewTextBoxColumn.DataPropertyName = "StuAge";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuAgeDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle6;
            this.stuAgeDataGridViewTextBoxColumn.HeaderText = "年龄";
            this.stuAgeDataGridViewTextBoxColumn.Name = "stuAgeDataGridViewTextBoxColumn";
            this.stuAgeDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // stuPhoneDataGridViewTextBoxColumn
            // 
            this.stuPhoneDataGridViewTextBoxColumn.DataPropertyName = "StuPhone";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuPhoneDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle7;
            this.stuPhoneDataGridViewTextBoxColumn.HeaderText = "电话";
            this.stuPhoneDataGridViewTextBoxColumn.Name = "stuPhoneDataGridViewTextBoxColumn";
            this.stuPhoneDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // stuGenderDataGridViewTextBoxColumn
            // 
            this.stuGenderDataGridViewTextBoxColumn.DataPropertyName = "StuGender";
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.stuGenderDataGridViewTextBoxColumn.DefaultCellStyle = dataGridViewCellStyle8;
            this.stuGenderDataGridViewTextBoxColumn.HeaderText = "性别";
            this.stuGenderDataGridViewTextBoxColumn.Name = "stuGenderDataGridViewTextBoxColumn";
            this.stuGenderDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // studentBindingSource
            // 
            this.studentBindingSource.DataMember = "Student";
            this.studentBindingSource.DataSource = this.student;
            // 
            // student
            // 
            this.student.DataSetName = "Student";
            this.student.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // studentTableAdapter
            // 
            this.studentTableAdapter.ClearBeforeFill = true;
            // 
            // btnAdds
            // 
            this.btnAdds.Location = new System.Drawing.Point(39, 442);
            this.btnAdds.Name = "btnAdds";
            this.btnAdds.Size = new System.Drawing.Size(81, 39);
            this.btnAdds.TabIndex = 10;
            this.btnAdds.Text = "添加";
            this.btnAdds.UseVisualStyleBackColor = true;
            this.btnAdds.Click += new System.EventHandler(this.btnAdds_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1100, 645);
            this.Controls.Add(this.btnAdds);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnSelect);
            this.Controls.Add(this.cmbSubject);
            this.Controls.Add(this.txtStuClass);
            this.Controls.Add(this.txtStuName);
            this.Controls.Add(this.txtStuNum);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.studentBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.student)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtStuNum;
        private System.Windows.Forms.TextBox txtStuName;
        private System.Windows.Forms.TextBox txtStuClass;
        private System.Windows.Forms.ComboBox cmbSubject;
        private System.Windows.Forms.Button btnSelect;
        private System.Windows.Forms.DataGridView dataGridView1;
        private Student student;
        private System.Windows.Forms.BindingSource studentBindingSource;
        private StudentTableAdapters.StudentTableAdapter studentTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuNumDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuClassDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn subjectDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuAgeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuPhoneDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn stuGenderDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button btnAdds;
    }
}

