USE [db_ExamOnline]
GO
/****** Object:  Table [dbo].[tb_Admin]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdminNum] [varchar](50) NULL,
	[AdminName] [varchar](50) NULL,
	[AdminPwd] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Lesson]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Lesson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LessonName] [varchar](50) NOT NULL,
	[LessonDataTime] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_Lesson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_score]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_score](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](50) NULL,
	[LessonName] [varchar](50) NULL,
	[score] [int] NULL,
	[StudentName] [varchar](50) NULL,
	[StudentAns] [varchar](50) NULL,
	[RigthAns] [varchar](50) NULL,
 CONSTRAINT [PK_tb_score] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Student]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNum] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[StudentPwd] [varchar](50) NULL,
	[StudentSex] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Teacher]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Teacher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherNum] [varchar](50) NULL,
	[TeacherName] [varchar](50) NULL,
	[TeacherPwd] [varchar](50) NULL,
	[TeacherCourse] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Teacher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_test]    Script Date: 2020/12/14 星期一 8:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_test](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[testContent] [varchar](200) NULL,
	[testAns1] [varchar](50) NULL,
	[testAns2] [varchar](50) NULL,
	[testAns3] [varchar](50) NULL,
	[testAns4] [varchar](50) NULL,
	[rightAns] [varchar](50) NULL,
	[pub] [int] NULL,
	[testCourse] [varchar](50) NULL,
 CONSTRAINT [PK_tb_test] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Admin] ON 

INSERT [dbo].[tb_Admin] ([ID], [AdminNum], [AdminName], [AdminPwd]) VALUES (1, N'mr', N'明日科技', N'mrsoft')
SET IDENTITY_INSERT [dbo].[tb_Admin] OFF
SET IDENTITY_INSERT [dbo].[tb_Lesson] ON 

INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (3, N'计算机原理', CAST(0x000099DE00DE9414 AS DateTime))
INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (4, N'市场营销', CAST(0x000099DE00DE9414 AS DateTime))
INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (5, N'网络通信', CAST(0x000099DE00DE9414 AS DateTime))
INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (6, N'古代文学', CAST(0x000099DE00DE9414 AS DateTime))
INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (11, N'大学英语', CAST(0x000099FA01031BA4 AS DateTime))
INSERT [dbo].[tb_Lesson] ([ID], [LessonName], [LessonDataTime]) VALUES (14, N'android从入门到精通', CAST(0x0000A64700FEAF9C AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Lesson] OFF
SET IDENTITY_INSERT [dbo].[tb_score] ON 

INSERT [dbo].[tb_score] ([ID], [StudentID], [LessonName], [score], [StudentName], [StudentAns], [RigthAns]) VALUES (139, N'10020071106', N'计算机原理', 0, N'小吕', N'0000000000', N'2312421434')
INSERT [dbo].[tb_score] ([ID], [StudentID], [LessonName], [score], [StudentName], [StudentAns], [RigthAns]) VALUES (140, N'10020071106', N'市场营销', 0, N'小吕', N'0000000000', N'2312421434')
INSERT [dbo].[tb_score] ([ID], [StudentID], [LessonName], [score], [StudentName], [StudentAns], [RigthAns]) VALUES (141, N'10020071106', N'网络通信', 0, N'小吕', N'0000000000', N'2312421434')
SET IDENTITY_INSERT [dbo].[tb_score] OFF
SET IDENTITY_INSERT [dbo].[tb_Student] ON 

INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (1, N'10020071106', N'小吕', N'111', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (2, N'10020071107', N'小王', N'111', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (3, N'10020071108', N'小夏', N'111', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (4, N'10020071109', N'小苏', N'111', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (5, N'10020071100', N'小张', N'111', N'女')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (6, N'10020071101', N'小李', N'111', N'女')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (7, N'10020071102', N'小郭', N'111', N'女')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (9, N'10020071104', N'小宋', N'111', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (15, N'001', N'王红', N'123', N'女')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (16, N'赵四', N'赵四', N'123', N'男')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (17, N'123456', N'金龟换酒', N'111', N'女')
INSERT [dbo].[tb_Student] ([ID], [StudentNum], [StudentName], [StudentPwd], [StudentSex]) VALUES (18, N'11111111111', N'看见好看', N'jh', N'女')
SET IDENTITY_INSERT [dbo].[tb_Student] OFF
SET IDENTITY_INSERT [dbo].[tb_Teacher] ON 

INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (1, N't001', N'吕老师', N'111', N'6')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (2, N't002', N'刘老师', N'111', N'3')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (3, N't003', N'王老师', N'111', N'3')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (4, N't004', N'邵老师', N'111', N'3')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (5, N't005', N'苏老师', N'111', N'4')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (7, N't007', N'郭老师', N'111', N'4')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (9, N'abc', N'阿A', N'aaa', N'11')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (10, N'更多', N'功夫', N'VC', N'3')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (11, N'123', N'阿萨德飞', N'2134', N'3')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (12, N'1526', N'吧', N'关闭', N'4')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (13, N'advb', N'覆盖', N'ga', N'4')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (14, N'ta12', N'vc', N'11', N'14')
INSERT [dbo].[tb_Teacher] ([ID], [TeacherNum], [TeacherName], [TeacherPwd], [TeacherCourse]) VALUES (15, N'%%^', N'ffd', N'652', N'12')
SET IDENTITY_INSERT [dbo].[tb_Teacher] OFF
SET IDENTITY_INSERT [dbo].[tb_test] ON 

INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (27, N'2+2=', N'4', N'5', N'6', N'7', N'1', 1, N'小学数学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (28, N'3×3＝', N'9', N'10', N'11', N'12', N'1', 1, N'小学数学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (29, N'4×4=', N'16', N'17', N'18', N'19', N'1', 1, N'小学数学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (30, N'5+6=', N'11', N'12', N'13', N'14', N'1', 1, N'小学数学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (31, N'1', N'11', N'111', N'111', N'111', N'1', 1, N'小学数学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (36, N'java语言的四大特性不包括下列哪一个选项？', N'继承性', N'抽象性', N'多态性', N'多样性', N'4', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (37, N'哪个是中国历史上第一位女皇帝', N'武则天', N'芈月', N'慈禧', N'容嬷嬷', N'1', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (45, N'企业产品定价的最终目的是', N'获得最大利润', N'使顾客满意', N'价格具有竞争力', N'符合政策要求', N'2', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (46, N'在市场竞争条件下卖主和买主只能是价格的接受者，而不是价格的决定者，这种竞争情况叫做', N'垄断竞争', N'寡头竞争', N'完全竞争', N'完全垄断', N'3', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (47, N'企业把创新产品的定的较低，以吸引大量顾客，提高市场占有率，这种定价策略叫做', N'撇脂定价', N'渗透定价', N'目标定价', N'加成定价', N'2', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (48, N'按照顾客一次购买总量或订购量而给予折扣的方法是', N'现金折扣', N'累计折扣', N'非累计折扣', N'数量折扣', N'3', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (49, N'企业将产品通过自己设置的商店卖给消费者，通常称此营销行为是', N'批发销售', N'间接销售', N'直接销售', N'寄售', N'3', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (50, N'某企业的主要产品是香皂和洗衣粉，该企业最适合采取', N'选择分销策略', N'独家分销策略', N'人员推销策略', N'密集分销策略', N'4', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (51, N'产品单价高、体积大而笨重，可以考虑下列何种渠道', N'短而宽', N'短而窄', N'长而宽', N'长而窄', N'4', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (52, N'不同广告媒体所需费用是有差别的，其中最昂贵的是', N'报纸', N'电视', N'广播', N'杂志', N'2', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (53, N'完整的计算机系统包括', N'运算器、存储器和控制器', N'外部设备和主机', N'主机和使用程序', N'配套的硬件设备和软件系统', N'4', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (54, N'计算机系统中的存储器系统是指', N'RAM存储器', N'ROM存储器', N'主存储器', N'主存储器和外存储器', N'4', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (55, N'一个8位二进制整数采用补码表示，且由3个“1”和5个“0”组成，则最小值为', N'-127', N'-32', N'-125', N'-3', N'2', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (56, N'计算机系统中采用补码运算的目的是为了', N'与手工运算方式保持一致', N'提高运算速度', N'简化计算机的设计', N'提高运算的精度', N'3', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (57, N'运算器虽有许多部件组成，但核心部分是', N'数据总线', N'算数逻辑运算单元', N'多路开关', N'通用寄存器', N'2', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (58, N'EPROM是指', N'只读存储器', N'随机存储器', N'可编程只读存储器', N'可擦写可编程只读存储器', N'4', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (59, N'寄存器间接寻址方式中，操作数处在', N'通用寄存器', N'内存单元', N'程序计数器', N'堆栈', N'2', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (60, N'某计算机字长32位，其存储器容量为4MB，若按字编址，那么他的寻址范围是', N'64K', N'32K', N'64KB', N'32KB', N'2', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (61, N'计算机操作的最小时间单位是', N'时钟周期', N'指令周期', N'CPU周期', N'外围设备', N'1', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (62, N'双绞线的水晶头与网络节点连接的接口名称是', N'AUI', N'RJ45', N'BNC', N'光纤接口', N'2', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (63, N'MAC子层属于OSI/RM中的', N'物理层', N'数据链路层', N'网络层', N'传输层', N'2', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (64, N'网络层的互联设备是', N'网桥', N'交换机', N'路由器', N'网关', N'3', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (65, N'关于网桥的功能，下面不正确的是', N'学习', N'转发', N'过滤', N'路由选择', N'4', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (66, N'LAN参考模型可分为物理层、', N'MAC,LLC等三层', N'LLC，MHS等三层', N'MAC,FTAM等三层', N'LLC，VT等三层', N'1', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (67, N'下述协议中不属于应用层协议的是', N'TCP', N'HTTP', N'TELNET', N'FTP', N'1', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (68, N'Internet的前身是', N'Intranet', N'Ethernet', N'ARPAnet', N'CERNET', N'3', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (69, N'允许双向传输，但一个时刻下值允许一个方向传输的是', N'双工', N'全双工', N'单工', N'半双工', N'4', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (70, N'在物理层实现连接功能可采用', N'网桥', N'中继器', N'网关', N'路由器', N'2', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (71, N'用于电子邮件的协议是', N'IP', N'TCP', N'SNMP', N'SMTP', N'4', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (72, N'IP地址中，C类地址的标准掩码是', N'255.0.0.0', N'255.255.0.0', N'255.255.255.255', N'255.255.255.0', N'4', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (73, N'当前IPV4采用的IP地址位数是', N'16位', N'32位', N'64位', N'128位', N'2', 1, N'网络通信')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (74, N'同步控制方式是', N'只适用于CPU控制的方式', N'只适用于外设控制的方式', N'由统一时序信号控制的方式', N'所有指令执行时间都相同的方式', N'3', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (75, N'计算机的外部设备是指', N'输入/输出设备', N'外存设备', N'远程通信设备', N'除了CPU和内存以外的其他设备', N'4', 1, N'计算机原理')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (76, N'从总体上看质量改进方案通常会增加企业的', N'成本', N'盈利', N'无形资产', N'以上答案都不对', N'2', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (77, N'市场营销的核心是', N'生产', N'分配', N'交换', N'促销', N'3', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (78, N'消费者的购买单位是个人或', N'集体', N'家庭', N'社会', N'单位', N'2', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (79, N'威胁水平高而机会水平低的业务是', N'理想业务', N'冒险业务', N'成熟业务', N'困难业务', N'4', 1, N'市场营销')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (80, N'《诗经.七月》是', N'爱情诗', N'战争诗', N'农事诗', N'怨刺诗', N'3', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (81, N'《春秋》的编纂体例是', N'国别体', N'纪传体', N'编年体', N'纪事本末体', N'3', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (82, N'下列寓言出自《战国策》的是', N'处女遇盗', N'郢书燕读', N'刻舟求剑', N'狡兔三窟', N'4', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (83, N'最早以“赋”作为文体名称的作品是', N'《高唐赋》', N'《吊屈原赋》', N'《柳赋》', N'《赋篇》', N'4', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (84, N'曹植诗歌创作中成就最高的诗体是', N'四言诗', N'五言诗', N'七言诗', N'杂言诗', N'2', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (85, N'正始诗人阮籍最著名的诗作是', N'咏怀诗', N'忧愤诗', N'拟古诗', N'悼亡诗', N'1', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (86, N'刘琨诗歌的风格是', N'笔力雄迈，文典以怨', N'英雄失路，万绪悲凉', N'坎土禀咏怀，彪炳可玩', N'平淡自然，韵味醇厚', N'2', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (87, N'晋代诗人郭璞最著名的诗作类型是', N'咏史诗', N'游仙诗', N'玄言诗', N'田园诗', N'2', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (88, N'谢灵运是我国诗歌史上第一位有成就的', N'田园诗人', N'玄言诗人', N'边塞诗人', N'山水诗人', N'4', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (89, N'盛唐诗风形成的标志是', N'讲究声律辞藻', N'书写慷慨情怀', N'诗情画意结合', N'声律风骨兼备', N'2', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (90, N'韩愈散文中数量最多的文类是', N'碑志', N'书信', N'序文', N'杂著', N'1', 1, N'古代文学')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (91, N'Do you prefer classical music___pop music?
Pop music,I think', N'ro', N'or', N'than', N'for', N'2', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (92, N'Could you tell me__?
He rides his bike', N'how does he go to work', N'how he goes to work', N'what does he to', N'where he goes', N'2', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (93, N'I hated my new school at first,but I made lots of friends and now I___it', N'get', N'take', N'fit', N'love', N'4', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (94, N'Harriet is lost and her parents are really___her', N'interested in', N'afraid of', N'busy with', N'worried about', N'4', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (95, N'How kind you are!You always do what you can___me', N'help', N'helping', N'to help', N'helps', N'3', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (96, N'What happened to Billy?
He___because of his drink-driving', N'is caught', N'was caught', N'has caught', N'had caught', N'2', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (97, N'下列不是手机操作系统的是', N'Android', N'Window Mobile', N'Apple IPhone IOS', N'windows vista', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (98, N'Andrdid的VM虚拟机是哪个', N'Dalvik', N'JVM', N'KVM', N'framework', N'1', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (99, N'下列哪个可做EditText编辑框的提示信息', N'android：inputType', N'android：text', N'android：digits', N'android：hint', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (100, N'下列哪个不是android SDK 中的ViewGroup（视图容器）', N'LinearLayout', N'ListView', N'GridView', N'Button', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (101, N'下列哪个不是Activity的生命周期方法之一', N'onCreate', N'startActivity', N'onStart', N'onResume', N'2', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (102, N'MediaPlayer对象从停止状态到播放状态调用的方法是（）', N'prepare（）', N'start（）', N'reset（）', N'release（）', N'1', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (103, N'使用Android系统进行拍照用到的类有', N'SurfaceView', N'SurfaceHolder', N'Callback', N'Camera', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (104, N'Is this beautiful?
_____', N'Yes,really have I seen this before', N'Yes,I need a rest', N'No,tomorrow will be fine', N'No,the work should be done by him', N'1', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (105, N'____
An accident has happened', N'where was the accident?', N'what happened?', N'when was the accident?', N'why did it happen?', N'2', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (106, N'Excuse me,how soon does this train leave?
____', N'It leaves every half an hour', N'It leaves in ten minutes', N'The next train leaves at ten', N'There is one at four', N'2', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (107, N'On his next birthday he___married for ten years', N'has been', N'will be', N'will have been', N'would have been', N'3', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (108, N'The children___many times not to play with fire', N'told', N'have told', N'have been told', N'are being told', N'3', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (109, N'The fact remains_____weare behind many others', N'that', N'why', N'where', N'how', N'1', 1, N'大学英语')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (110, N'下列选项哪个不是Activity启动的方法？', N'goToActivity', N'startActivity', N'startActivityFromChild', N'startActivityForRessult', N'1', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (111, N'对于XML布局文件中的视图控件，layout_width属性的属性值不可以是什么？', N'match_parent', N'fill_parent', N'wrap_content', N'match_content', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (112, N'对一些资源以及状态的操作保存，最好是保存在Activity生命周期的哪个函数中进行？', N'onStart()', N'onPause()', N'onCreate()', N'onResume', N'1', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (113, N'下列哪一个选项不属于AdapterView类的子选项？', N'ListView', N'Spinner', N'GridView', N'ScrollView', N'4', 1, N'android从入门到精通')
INSERT [dbo].[tb_test] ([ID], [testContent], [testAns1], [testAns2], [testAns3], [testAns4], [rightAns], [pub], [testCourse]) VALUES (114, N'下列哪一款移动设备搭载的是Android平台？', N'NOKIA手机', N'小米手机', N'iPhone手机', N'iPad', N'1', 1, N'android从入门到精通')
SET IDENTITY_INSERT [dbo].[tb_test] OFF
