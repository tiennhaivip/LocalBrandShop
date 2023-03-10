USE [TanLocalBrand]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[describe] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Amount] [float] NULL,
	[Username] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[price] [int] NULL,
	[size] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[totalmoney] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/9/2021 7:19:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ID] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[cat_ID] [varchar](6) NULL,
	[image] [varchar](100) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[status] [nvarchar](20) NULL,
	[adddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (1, N'tantv', N'cala', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (2, N'culabo', N'admin', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (3, N'tiennv', N'user', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (4, N'phulink', N'user', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (5, N'phongsk', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (6, N'viettq', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (7, N'lama', N'admin', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (8, N'linhrin', N'tana', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (9, N'tiennv', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (10, N'phulink', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (11, N'phongsk', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (12, N'viettq', N'user', 0)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (13, N'tavantan', N'123', 1)
INSERT [dbo].[Accounts] ([CustomerID], [Username], [Password], [IsAdmin]) VALUES (14, N'abcdxyz', N'123', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'BH', N'Bad Habits', N'thiết kế mang tính cá nhân cao, chất, độc, lạ phong cách đường phố')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'HC', N'High Club', N'thiết kế chất lượng, artwork sáng tạo, và ý nghĩa kết nối.')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'HNM', N'HNBMG', N'thiết kế logo độc đáo,không quá cầu kỳ trong thiết kế nhưng vẫn tỏa sáng')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'Z', N'CLownz', N'Quần áo đậm chất hip hop dành cho các tín đồ đam mê văn hóa đường phố ')
GO
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (1, N'Tạ Văn Tân', N'tantvhe151110@fpt.edu.vn', N'xóm 6
, thôn Phúc Đức xã Sài Sơn huyện Quốc Oai Hà Nội', N'0357682001', 50000000, N'tantv', N'admin')
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (2, N'Tạ Văn Tiến', N'nhaiben762001@gmail.com', N'xã Liệp Tuyết,
huyện Quốc Oai,Hà Nội', N'0355061728', 50000000, N'tiennv', N'user')
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (3, N'Tạ Văn Phú', N'phulink@gmail.com', N'
xã Thọ Xuân huyện Đan Phượng', N'0584246735', 50000000, N'phulink', N'user')
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (4, N'Nguyễn Thị Vàng Nhi', N'nhintv@gmail.com', N'xã Canh Nậu huyện Thạch Thất xã Phùng Xá huyện Thạch Thất', N'094345528', 50000000, N'vangnhi', N'user')
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (5, N'Nguyễn Thị Khánh Linh', N'rin286@gmail.com', N'xã Đông Sơn huyện Chương Mỹ thành phố Hà Nội', N'0821965313', 50000000, N'linhrin', N'admin')
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Email], [Address], [Phone], [Amount], [Username], [Password]) VALUES (6, N'Trần Thái Linh', N'nhismbede@gmail.com', N'Đê La Thành Hà Nội', N'0987654321', 50000000, N'nhismbong', N'admin')
GO
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [price], [size]) VALUES (5, 1, 10, 280000, N'S')
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [price], [size]) VALUES (6, 2, 5, 834434, N'XL')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (1, 1, CAST(N'2021-03-06' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (2, 3, CAST(N'2021-06-05' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (3, 4, CAST(N'2021-03-08' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (4, 3, CAST(N'2021-02-03' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (5, 2, CAST(N'2021-04-06' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (6, 1, CAST(N'2021-12-10' AS Date), NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [totalmoney]) VALUES (41, 2, CAST(N'2021-03-05' AS Date), 500000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (1, N'Bad Ferriswheel Washed ', N'HC', N'images/HighClub/Bad Ferriswheel Washed Tee.jpg', 280000, 2, N'còn hàng', CAST(N'2019-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (2, N'Big Truck Tee', N'HC', N'images/HighClub/Big Truck Tee.jpg', 300000, 30, N'còn hàng', CAST(N'2019-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (3, N'Big Wheels Tee', N'HC', N'images/HighClub/Big Wheels Tee.jpg', 350000, 35, N'còn hàng', CAST(N'2019-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (5, N'Death Words Washed', N'HC', N'images/HighClub/Death Words Washed Tee.jpg', 280000, 20, N'còn hàng', CAST(N'2019-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (6, N'Euro Champion Tee', N'HC', N'images/HighClub/Euro Champion Tee.jpg', 300000, 30, N'còn hàng', CAST(N'2019-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (7, N'F1 Highway Tee', N'HC', N'images/HighClub/F1 Highway Tee.jpg', 350000, 35, N'còn hàng', CAST(N'2019-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (8, N'High Universe Tee', N'HC', N'images/HighClub/High Universe Tee.jpg', 250000, 31, N'còn hàng', CAST(N'2018-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (9, N'Hoodie Reply 1960', N'HC', N'images/HighClub/Hoodie Reply 1960.jpg', 300000, 30, N'còn hàng', CAST(N'2019-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (10, N'Magic Chrome Tee', N'HC', N'images/HighClub/Magic Chrome Tee.jpg', 350000, 35, N'còn hàng', CAST(N'2019-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (11, N'The Painting Sweater', N'HC', N'images/HighClub/The Painting Sweater.jpg', 350000, 34, N'còn hàng', CAST(N'2018-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (12, N'Shine To Death Tee', N'HC', N'images/HighClub/Shine To Death Tee.png', 280000, 20, N'còn hàng', CAST(N'2019-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (13, N'Thunder Racing Tee', N'HC', N'images/HighClub/Thunder Racing Tee.jpg', 300000, 30, N'còn hàng', CAST(N'2019-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (14, N'Venice Tee', N'HC', N'images/HighClub/Venice Tee.png', 350000, 35, N'còn hàng', CAST(N'2019-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (15, N'Vietnam Racing Tee', N'HC', N'images/HighClub/Vietnam Racing Tee.jpg', 250000, 31, N'còn hàng', CAST(N'2018-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (16, N'HNBMG Ha Noi All In', N'HNM', N'images/hnbmg/hnbmg hanoi.jpg', 500000, 31, N'còn hàng', CAST(N'2018-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (17, N'Hoodies Astronaut Tee', N'HNM', N'images/hnbmg/Hoodies Astronaut Tee.jpg', 500000, 28, N'còn hàng', CAST(N'2018-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (18, N'Mercury Tee', N'HNM', N'images/hnbmg/Mercury Tee.jpg', 550000, 31, N'còn hàng', CAST(N'2018-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (19, N'SoleEx Tee', N'HNM', N'images/hnbmg/Soleex.jpg', 600000, 30, N'còn hàng', CAST(N'2019-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (20, N'Yuki Hoodie', N'HNM', N'images/hnbmg/Yuki Hoodie.jpg', 500000, 31, N'còn hàng', CAST(N'2018-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (21, N'Turn off the lights Tee', N'HNM', N'images/hnbmg/TrangT.jpg', 500000, 28, N'còn hàng', CAST(N'2018-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (22, N'Simple Tee', N'HNM', N'images/hnbmg/teehnbmg1.jpg', 550000, 31, N'còn hàng', CAST(N'2018-08-11T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (23, N'Worldwide Tee', N'HNM', N'images/hnbmg/Worldwide Tee.jpg', 600000, 30, N'còn hàng', CAST(N'2019-09-11T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (24, N'HNBMG X HNAIO', N'HNM', N'images/hnbmg/teehnbmg2.jpg', 500000, 31, N'còn hàng', CAST(N'2018-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (25, N'Merchandice', N'HNM', N'images/hnbmg/Merchandice.jpg', 500000, 28, N'còn hàng', CAST(N'2018-10-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (26, N'Astronaut Tee', N'HNM', N'images/hnbmg/Astronaut Tee.jpg', 550000, 31, N'còn hàng', CAST(N'2018-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (27, N'Vintage Tee', N'HNM', N'images/hnbmg/teehnbmg3.jpg', 600000, 30, N'còn hàng', CAST(N'2019-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (28, N'F Tee', N'HNM', N'images/hnbmg/F Tee.jpg', 550000, 31, N'còn hàng', CAST(N'2018-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (29, N'White Tee X', N'HNM', N'images/hnbmg/White Tee X.jpg', 600000, 30, N'còn hàng', CAST(N'2019-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (30, N'Universary', N'HNM', N'images/hnbmg/Universary.jpg', 600000, 30, N'còn hàng', CAST(N'2019-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (31, N'Clown laugh football', N'Z', N'images/Clownz/Clown laugh football.jpg', 350000, 50, N'còn hàng', CAST(N'2021-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (32, N'Clownz blood diamond', N'Z', N'images/Clownz/Clownz blood diamond.jpg', 400000, 40, N'còn hàng', CAST(N'2021-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (33, N'CLownz Blue Tee', N'Z', N'images/Clownz/CLownz Blue Tee.jpg', 350000, 50, N'còn hàng', CAST(N'2021-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (34, N'CLownz Eye T-shirt', N'Z', N'images/Clownz/CLownZEyeTee.jpg', 400000, 40, N'còn hàng', CAST(N'2021-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (35, N'CLOWNZ GLOBAL ', N'Z', N'images/Clownz/CLOWNZ GLOBAL T-SHIRT.jpg', 350000, 50, N'còn hàng', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (36, N'CLownz Jacket ZWC', N'Z', N'images/Clownz/CLownz Jacket ZWC.jpg', 400000, 40, N'còn hàng', CAST(N'2021-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (37, N'Clownz racing flames ', N'Z', N'images/Clownz/Clownz racing flames T-shirt.jpg', 350000, 50, N'còn hàng', CAST(N'2021-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (38, N'Clownz Smile', N'Z', N'images/Clownz/Clownz Smile.jpg', 400000, 40, N'còn hàng', CAST(N'2021-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (39, N'Clownz Space', N'Z', N'images/Clownz/Clownz Space.jpg', 400000, 40, N'còn hàng', CAST(N'2021-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (40, N'Homemade rapper', N'Z', N'images/Clownz/HomemadeRapper1.jpg', 350000, 50, N'còn hàng', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (41, N'Ice Edition clownz', N'Z', N'images/Clownz/IceEdition.jpg', 400000, 40, N'còn hàng', CAST(N'2021-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (42, N'LowG Tee', N'Z', N'images/Clownz/CreamClownz.jpg', 350000, 50, N'còn hàng', CAST(N'2021-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (43, N'ONI CYBER T-SHIRT', N'Z', N'images/Clownz/ONI CYBER T-SHIRT.jpg', 400000, 40, N'còn hàng', CAST(N'2021-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (44, N'Racing team Tee', N'Z', N'images/Clownz/Racing team Tee.jpg', 350000, 50, N'còn hàng', CAST(N'2021-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (45, N'Skull Tee', N'Z', N'images/Clownz/SkullTee1.jpg', 400000, 40, N'còn hàng', CAST(N'2021-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (46, N'America Bad Tee', N'BH', N'images/BadHabits/America Bad Tee.jpg', 400000, 40, N'còn hàng', CAST(N'2020-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (47, N'Bad brown Tee', N'BH', N'images/BadHabits/Bad brown Tee.jpg', 350000, 50, N'còn hàng', CAST(N'2020-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (48, N'Bad death Tee', N'BH', N'images/BadHabits/Bad death Tee.jpg', 300000, 35, N'còn hàng', CAST(N'2020-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (49, N'Bad grande', N'BH', N'images/BadHabits/Bad grande.jpg', 350000, 28, N'còn hàng', CAST(N'2020-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (50, N'Bad Killer Tee', N'BH', N'images/BadHabits/Bad Killer Tee.jpg', 400000, 40, N'còn hàng', CAST(N'2020-10-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (51, N'Bad Missing', N'BH', N'images/BadHabits/Bad Missing.jpg', 350000, 50, N'còn hàng', CAST(N'2020-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (52, N'Bad skull Tee', N'BH', N'images/BadHabits/Bad skull Tee.jpg', 300000, 35, N'còn hàng', CAST(N'2020-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (53, N'Lazy rabbit', N'BH', N'images/BadHabits/lazyrabbit.jpg', 350000, 25, N'còn hàng', CAST(N'2020-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (54, N'Manga', N'BH', N'images/BadHabits/Manga.jpg', 400000, 37, N'còn hàng', CAST(N'2020-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (55, N'Painful T-shirt', N'BH', N'images/BadHabits/painful T-shirt.jpg', 350000, 47, N'còn hàng', CAST(N'2020-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (56, N'Rabbit cyber', N'BH', N'images/BadHabits/Rabbit cyber.jpg', 300000, 35, N'còn hàng', CAST(N'2020-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (57, N'rabbit vacation', N'BH', N'images/BadHabits/rabbit vacation.jpg', 350000, 25, N'còn hàng', CAST(N'2020-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (58, N'scientist T-shirt', N'BH', N'images/BadHabits/scientist.jpg', 350000, 50, N'còn hàng', CAST(N'2020-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (59, N'Crack T-shirt', N'BH', N'images/BadHabits/Crack T-shirt.jpg', 300000, 35, N'còn hàng', CAST(N'2020-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[product] ([ID], [name], [cat_ID], [image], [price], [quantity], [status], [adddate]) VALUES (60, N'Cheerleader', N'BH', N'images/BadHabits/Cheerleader.jpg', 350000, 20, N'còn hàng', CAST(N'2020-12-06T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Accounts] ([CustomerID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[product] ([ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [CustomerID]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cat_ID])
REFERENCES [dbo].[Categories] ([ID])
GO
