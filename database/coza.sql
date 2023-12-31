USE [CozaStore]
GO
/****** Object:  Table [dbo].[Account_address]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_address](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[address] [nvarchar](50) NULL,
	[notes] [nvarchar](255) NULL,
	[ward] [nvarchar](150) NULL,
	[district] [nvarchar](150) NULL,
	[province] [nvarchar](150) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_voucher]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_voucher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[voucher_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account_voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](500) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone] [nvarchar](11) NULL,
	[email] [nvarchar](255) NULL,
	[birthday] [nvarchar](50) NULL,
	[nationality] [nvarchar](50) NULL,
	[photo] [nvarchar](255) NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[role_id] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [nvarchar](255) NULL,
	[describe] [nvarchar](max) NULL,
	[short_describe] [nvarchar](500) NULL,
	[create_date] [date] NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[ram] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_status]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_status](
	[id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[status_id] [nvarchar](50) NULL,
	[address_id] [bigint] NULL,
	[ship_phone] [nvarchar](10) NULL,
	[ship_address] [nvarchar](500) NULL,
	[ship_notes] [nvarchar](500) NULL,
	[ship_ward] [nvarchar](255) NULL,
	[ship_district] [nvarchar](255) NULL,
	[ship_province] [nvarchar](255) NULL,
	[ship_fee] [float] NULL,
	[ship_delivery] [nvarchar](50) NULL,
	[ship_pay] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[total] [float] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NULL,
	[sale] [float] NULL,
	[quantity] [int] NULL,
	[create_date] [date] NULL,
	[describe] [nvarchar](max) NULL,
	[image] [nvarchar](255) NULL,
	[image1] [nvarchar](255) NULL,
	[image2] [nvarchar](255) NULL,
	[image3] [nvarchar](255) NULL,
	[image4] [nvarchar](255) NULL,
	[available] [bit] NULL,
	[category_id] [bigint] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[product_id] [bigint] NULL,
	[image] [nvarchar](255) NULL,
	[comment] [nvarchar](500) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [nvarchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 16/12/2023 12:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[id] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
	[decribe] [nvarchar](500) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[quantity] [int] NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_address] ON 

INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (1, N'', N'', N'', N'', N'', N'', N'', N'cozastore')
INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (2, N'quan', N'0966205580', N'Nguyễn Thái Sơn', N'30/04/1975', N'Tân Chánh Hiệp', N'Quận 12', N'Hồ Chí Minh', N'quan')
INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (17, N'tien', N'0966205580', N'Thôn Lộc Tuy', N'Số Nhà 69', N'Xã Công Liêm', N'Huyện Nông Cống', N'Tỉnh Thanh Hóa', N'tien')
INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (20, N'quan', N'0966205588', N'Lộc Tuy', N'Giao Buổi Sáng', N'Công Liêm', N'Nông Cống', N'Thanh Hóa', N'Mạch Văn Quân')
INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (21, N'Quân Mạch', N'0966205580', N'Hẻm 5M', N'23/01/2003', N'Phường Hiệp Thành', N'Quận 12', N'Hồ Chí Minh', N'quan')
INSERT [dbo].[Account_address] ([id], [name], [phone], [address], [notes], [ward], [district], [province], [username]) VALUES (22, N'linh', N'0123456789', N'Ấp 1', N'Giao Buổi Sáng', N'Phường Hiệp Thành', N'Quận 12', N'Hồ Chí Minh', N'linh')
SET IDENTITY_INSERT [dbo].[Account_address] OFF
GO
SET IDENTITY_INSERT [dbo].[Account_voucher] ON 

INSERT [dbo].[Account_voucher] ([id], [username], [voucher_id]) VALUES (1, N'quan', N'BLACK-FRIDAY')
SET IDENTITY_INSERT [dbo].[Account_voucher] OFF
GO
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'cozastore', N'$2a$10$mqrLvBH/L9vt3YHnzEkO0eLN73r.OFXX.bxNqkqCRCwoQ0TP26spy', NULL, NULL, 0, NULL, N'machvquan2301@gmail.com', NULL, NULL, N'avata.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'hieu', N'$2a$10$ZivUaQ9QjnbTKe277yxd0.JbQ3wrVAcchaI8U3Du4gMPeElXmereK', N'Hiếu', N'Nguyễn Trung', 0, N'0966205580', N'machvquan2301@gmail.com', NULL, N'Việt Nam', N'avt.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'hung', N'$2a$10$Lqa.R7GcYrdGpMAD/MOfDuyjc5I1miqJSyrRxRlfYSchIN7jidst6', N'Hưng', N'Nguyễn Quốc', 0, N'0966205580', N'machvquan2301@gmail.com', NULL, N'Việt Nam', N'avt.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'linh', N'$2a$10$cFF87Oe.WjJRZiyYFLaa3.HaR1INTMgPRheTylnidgvNhpD9om9Em', N'Linh', N'Nguyễn Diệu', 0, N'0966205580', N'machvquan2301@gmail.com', N'2023-12-15', N'Việt Nam', N'steve-jobs.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'luan', N'$2a$10$JsvP63FOp/rcPpRYrA8Gbe0.EssSIodya2/edwrOGDY40kupjg5Gu', N'Luân', N'Võ Minh', 1, N'0966205580', N'machvquan2301@gmail.com', N'1970-01-16T00:00:00.000Z', N'Việt Nam', N'avata.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'Mạch Văn Quân', N'18c54e9cba6', N'Quân', N'Mạch Văn', 1, N'0966205580', N'machvquan2301@gmail.com', N'2023-12-11', N'Việt Nam', N'avata.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'quan', N'$2a$10$NrKp/t8TdshIguIiU4gvo.1Wi1VmGC10hR23ZvZEcd7Dt.zScGMHu', N'Quân', N'Mạch Văn', 0, N'0966205580', N'machvquan2301@gmail.com', N'2003-01-23', N'Việt Nam', N'steve-jobs.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'tai', N'$2a$10$sfp/7o4.A8LpV1VcDKYbl.euPzf6y8SekHeeR8.FmiZMF8prsVFT6', N'Tài', N'Lương Thế', 1, N'0966205580', N'machvquan2301@gmail.com', N'2023-12-02T01:00:00.000Z', N'Việt Nam', N'avata.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'tien', N'$2a$10$/vV72T6DPLx/353nkinG7ubvBaIr3HkZ0ujXfhhPEJdZL7eXDVCnS', N'Tiến', N'Vương Minh', 1, N'0966205580', N'machvquan2301@gmail.com', N'2023-11-30T01:00:00.000Z', N'Việt Nam', N'avt.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'tra', N'$2a$10$sdYlza4YYVjTiAFU7sG9w.gNmjwfyltJRz/nosoHNYgrdkbiBvy6G', N'Trà', N'Hoàng Thanh', 0, N'0966205580', N'machvquan2301@gmail.com', N'2004-04-13', N'Việt Nam', N'avata.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [first_name], [last_name], [gender], [phone], [email], [birthday], [nationality], [photo], [active]) VALUES (N'vong', N'$2a$10$KBh85SI4.OZOWX1mYI.CHOPnE8jtFZU9uGZjNGM.gCuqWAjE73AI.', N'Vọng', N'Nguyễn Thiên', 0, N'0966205580', N'machvquan2301@gmail.com', NULL, N'Việt Nam', N'avt.jpg', 1)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (11, N'quan', N'STAFF')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (13, N'hung', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (15, N'tien', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (16, N'vong', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (19, N'hieu', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (22, N'tra', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (23, N'luan', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (26, N'linh', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (28, N'cozastore', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (30, N'Mạch Văn Quân', N'USER')
INSERT [dbo].[Authorities] ([id], [username], [role_id]) VALUES (31, N'quan', N'USER')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([id], [title], [image], [describe], [short_describe], [create_date], [username]) VALUES (1, N'So sánh cáp USB-C của Apple với cáp thông thường', N'blog1.png', N'NiceTQ được quảng cáo với tốc độ tới 10 Gb/giây tương đương USB 3.1 Gen 2, nhưng thực tế thấp hơn nhiều. Phân tích bên trong, các chuyên gia nhận thấy cáp thậm chí được nối bốn dây trực tiếp mà không có bo mạch. Với thiết kế này, cáp chỉ có thể hỗ trợ tối đa chuẩn USB 2.0. Ngoài ra, mỗi dây được nhúng riêng lẻ trong hai lớp cách điện và cũng không có dây nối đất. Vì không có dây dự phòng, nếu một trong bốn chân bị đứt, cáp sẽ bị hỏng.', N'Có giá 129 USD, Apple Thunderbolt 4 Pro được đánh giá đáng tiền so với các loại cáp USB-C giá vài USD trên thị trường.', CAST(N'2023-12-07' AS Date), N'quan')
INSERT [dbo].[Blogs] ([id], [title], [image], [describe], [short_describe], [create_date], [username]) VALUES (2, N'iPhone 15 giảm giá mạnh tại Trung Quốc', N'blog2.png', N'Trên một số hệ thống khác như Pinduoduo, iPhone 15 Plus 128 GB được giảm hơn 900 nhân dân tệ (3 triệu đồng) so với giá bán lẻ 6.999 tệ của Apple. Còn trên Taobao của Alibaba, người dùng có thể mua iPhone 15 Pro Max 512 GB với giá 10.698 nhân dân tệ, thấp hơn 1.301 nhân dân tệ (4,4 triệu đồng) so với mức niêm yết của Apple.

Apple, Pinduoduo và Alibaba chưa đưa ra bình luận.

Năm nay, thế hệ iPhone 15 không ăn khách như iPhone 14 tại Trung Quốc. Giữa tháng 10, hãng nghiên cứu Counterpoint Research cho biết doanh số iPhone 15 giảm khoảng 4,5% so với iPhone 14 sau 17 ngày lên kệ. Đây là màn khởi đầu thấp nhất của iPhone ở Trung Quốc kể từ năm 2018. Trong khi đó, các nhà phân tích của Jefferies thậm chí ước tính mức sụt giảm của iPhone mới có thể lên tới hai con số. Họ ghi nhận tình trạng iPhone 15 được bán với "giá chiết khấu" so với giá niêm yết, phản ánh nhu cầu yếu của thị trường này với thiết bị Apple.', N'Các nền tảng thương mại điện tử tại Trung Quốc đang điều chỉnh giá iPhone 15 với mức giảm lên tới 1.501 nhân dân tệ (5 triệu đồng).', CAST(N'2023-12-15' AS Date), N'quan')
INSERT [dbo].[Blogs] ([id], [title], [image], [describe], [short_describe], [create_date], [username]) VALUES (3, N'iOS 18 sẽ tích hợp AI giống ChatGPT', N'blog3.png', N'Trước đó, The Information đưa tin Apple sẽ tích hợp mô hình ngôn ngữ lớn vào Siri để cho phép người dùng tự động hóa các tác vụ phức tạp. Hồi tháng 7, Mark Gurman của Bloomberg cũng cho biết Apple đang thử nghiệm nội bộ chatbot có tên Apple GPT, nhưng chưa xác định lộ trình cụ thể để phát hành các công cụ AI tạo sinh ra công chúng. Đến tháng 8, nhà phân tích Ming-Chi Kuo nói công nghệ trí tuệ nhân tạo của Apple đang tụt hậu so với các đối thủ cạnh tranh, nên chưa thể sớm cho ra mắt AI thế hệ mới.

AI tạo sinh bắt đầu phổ biến cuối năm ngoái khi OpenAI phát hành ChatGPT. Google và Microsoft cũng đã tung ra các chatbot tương tự đầu năm nay. Các chatbot được đào tạo trên các mô hình ngôn ngữ lớn, cho phép phản hồi giống như con người. Apple cũng công khai xác nhận mối quan tâm đối với AI thế hệ mới và tăng cường tuyển dụng nhân sự trong lĩnh vực này.', N'Apple được cho là đã lên kế hoạch triển khai AI tạo sinh trên iPhone và iPad vào cuối năm 2024 thông qua iOS 18 và iPadOS 18.', CAST(N'2023-12-04' AS Date), N'quan')
INSERT [dbo].[Blogs] ([id], [title], [image], [describe], [short_describe], [create_date], [username]) VALUES (4, N'Apple sẽ bổ sung một phím bấm mới trên dòng sản phẩm iPhone 16', N'blog4.jpg', N'Trước đó, nhà phân tích Ross Young từ Display Supply Chain Consultants cho biết bộ đôi iPhone 16 Pro và iPhone 16 Pro Max sẽ được gia tăng màn hình lên kích thước lần lượt 6,3 inch và 6,9 inch. Nếu thông tin rò rỉ trên chính xác, đây sẽ là kích thước lớn nhất từng xuất hiện trên những chiếc iPhone. 

Ngoài ra, theo một số nguồn tin, khi iPhone 16 và iPhone 16 Plus vẫn sử dụngmodem Snapdragon X70 giống dòng iPhone 15 thì iPhone 16 Pro ra mắt vào năm sau sẽ được trang bị modem Snapdragon X75 của Qualcomm. Được biết, Apple thường sử dụng một modem Qualcomm trên các iPhone của cùng một dòng (ngoại trừ iPhone SE). Như vậy, sự thay đổi này có thể là sự tính toán đến từ Apple.

Ngoài ra, dòng iPhone 16 Pro cũng được dự đoán sẽ trang bị chip A18 Pro, được sản xuất trên tiến trình 3nm, đi kèm với RAM 8GB.', N'Đây không phải lần đầu tiên Apple cho tích hợp phím mới,  bộ đôi iPhone 15 Pro và 15 Pro Max  đã được trang bị phím Action Button giúp người dùng có thể truy cập nhanh các tính năng khác nhau.', CAST(N'2023-12-04' AS Date), N'quan')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'iPhone')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'MacBook')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'iPad')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'Watch')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'Âm Thanh')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'Phụ Kiện')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_detail] ON 

INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (132, 1, 1, 31221000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (133, 1, 2, 28790000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (134, 1, 3, 23391000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (135, 2, 3, 23391000, 5, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (136, 2, 6, 67991500, 4, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (137, 2, 1, 31221000, 3, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (138, 3, 1, 31221000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (139, 3, 1, 31221000, 1, N'128G', N'Gold')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (140, 4, 2, 14395000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (141, 4, 1, 31221000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (142, 5, 2, 14395000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (143, 5, 1, 31221000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (144, 6, 2, 14395000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (145, 7, 1, 31221000, 2, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (146, 8, 29, 790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (147, 8, 28, 820000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (148, 8, 27, 1990000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (149, 8, 26, 2310000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (150, 8, 25, 4390000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (151, 8, 24, 520000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (152, 8, 23, 8990000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (153, 8, 22, 7790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (154, 8, 20, 7990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (155, 8, 19, 17490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (156, 8, 18, 21990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (157, 8, 17, 11290000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (158, 8, 15, 15490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (159, 8, 14, 20090000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (160, 8, 13, 14290000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (161, 8, 12, 23990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (162, 8, 10, 41690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (163, 8, 9, 30321000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (164, 8, 8, 62490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (165, 8, 7, 36490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (166, 8, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (167, 8, 2, 28790000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (168, 8, 3, 25990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (169, 8, 32, 24590000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (170, 8, 16, 5112000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (171, 9, 1, 27752000, 5, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (172, 9, 4, 11495000, 5, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (173, 9, 5, 14745000, 5, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (174, 9, 9, 30321000, 3, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (175, 9, 15, 15490000, 3, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (176, 9, 14, 20090000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (177, 9, 29, 790000, 10, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (178, 9, 29, 790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (179, 9, 29, 790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (180, 10, 1, 27752000, 5, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (181, 10, 2, 23032000, 4, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (182, 10, 3, 18193000, 3, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (183, 10, 4, 11495000, 2, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (184, 10, 5, 14745000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (185, 12, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (186, 12, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (187, 12, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (188, 12, 4, 11495000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (189, 12, 5, 14745000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (190, 12, 10, 41690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (191, 12, 9, 33690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (192, 13, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (193, 13, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (194, 14, 29, 790000, 10, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (195, 15, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (196, 15, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (197, 15, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (198, 16, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (199, 16, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (200, 17, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (201, 17, 16, 6390000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (202, 17, 34, 3190000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (203, 18, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (204, 19, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (205, 19, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (206, 20, 29, 790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (207, 20, 28, 820000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (208, 20, 27, 1990000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (209, 20, 26, 2310000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (210, 20, 25, 4390000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (211, 20, 24, 520000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (212, 20, 23, 8990000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (213, 20, 22, 7790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (214, 20, 20, 7990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (215, 20, 19, 17490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (216, 20, 18, 21990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (217, 20, 17, 11290000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (218, 21, 10, 41690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (219, 21, 9, 33690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (220, 21, 8, 62490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (221, 21, 7, 36490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (222, 21, 15, 15490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (223, 21, 14, 20090000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (224, 21, 13, 14290000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (225, 21, 12, 23990000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (226, 21, 13, 14290000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (227, 22, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (228, 22, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (229, 23, 9, 33690000, 4, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (230, 23, 8, 62490000, 1, N'128G', N'Black')
GO
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (231, 24, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (232, 24, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (233, 24, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (234, 24, 5, 23592000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (235, 24, 4, 11495000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (236, 24, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (237, 24, 2, 23032000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (238, 24, 3, 18193000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (239, 24, 4, 11495000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (240, 25, 1, 27752000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (241, 26, 6, 80990000, 1, N'512G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (242, 26, 5, 29990000, 1, N'256G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (243, 26, 16, 6890000, 1, N'256G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (244, 27, 1, 34690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (245, 27, 1, 35190000, 1, N'256G', N'Purple')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (246, 27, 2, 28790000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (247, 28, 29, 790000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (248, 28, 28, 820000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (249, 28, 25, 4390000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (250, 28, 24, 520000, 1, N'', N'')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (251, 28, 15, 15490000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (252, 28, 1, 34690000, 1, N'128G', N'Black')
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [price], [quantity], [ram], [color]) VALUES (253, 29, 1, 34690000, 2, N'128G', N'Black')
SET IDENTITY_INSERT [dbo].[Order_detail] OFF
GO
INSERT [dbo].[Order_status] ([id]) VALUES (N'Cancel')
INSERT [dbo].[Order_status] ([id]) VALUES (N'Complete')
INSERT [dbo].[Order_status] ([id]) VALUES (N'Confirm')
INSERT [dbo].[Order_status] ([id]) VALUES (N'Delivery')
INSERT [dbo].[Order_status] ([id]) VALUES (N'Pending')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (1, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-11-30' AS Date), 73502000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (2, N'quan', N'Cancel', 2, N'0966205580', N'Hẻm 5M', N'Số Nhà 101', N'Phường Hàng Buồm', N'Quận Hoàn Kiếm', N'Thành phố Hà Nội', 0, N'Khách Hàng Đã Hủy Đơn', N'Cash', CAST(N'2023-11-30' AS Date), 472684000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (3, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 0, N'Viettel Post', N'Paypal', CAST(N'2023-11-30' AS Date), 52542000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (4, N'quan', N'Delivery', 2, N'0966205580', N'Hẻm 5M', N'Số Nhà 101', N'Phường Hàng Mã', N'Quận Hoàn Kiếm', N'Thành phố Hà Nội', 0, N'Viettel Post', N'Cash', CAST(N'2023-11-30' AS Date), 45716000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (5, N'quan', N'Delivery', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-01' AS Date), 45616000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (6, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 250000, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-01' AS Date), 4495000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (7, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Paypal', CAST(N'2023-12-02' AS Date), 52442000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (8, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-02' AS Date), 443445000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (9, N'quan', N'Cancel', 2, N'', N'', N'', N'', N'', N'', 0, N'Shop Đã Hủy Đơn', N'Cash', CAST(N'2023-12-02' AS Date), 436963000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (10, N'quan', N'Complete', 2, N'0966205580', N'Hẻm 5M', N'Số Nhà 101', N'Xã Thượng Phùng', N'Huyện Mèo Vạc', N'Tỉnh Hà Giang', 0, N'Viettel Post', N'Cash', CAST(N'2023-12-02' AS Date), 323202000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (12, N'tien', N'Complete', 1, N'0966205580', N'Hẻm 5M', N'Số Nhà 101, Cho Kiểm Hàng', N'Phường Hàng Mã', N'Quận Hoàn Kiếm', N'Thành phố Hà Nội', 0, N'Giao Hàng Tiết Kiệm', N'Paypal', CAST(N'2023-12-02' AS Date), 170597000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (13, N'quan', N'Complete', 2, N'0966205580', N'Thôn Vĩnh Biệt', N'Số Nhà 123', N'Xã Đô Lương', N'Huyện Đông Hưng', N'Tỉnh Thái Bình', 250000, N'Viettel Post', N'Cash', CAST(N'2023-12-03' AS Date), 31475000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (14, N'quan', N'Pending', 2, N'', N'', N'', N'', N'', N'', 250000, N'Viettel Post', N'Cash', CAST(N'2023-12-04' AS Date), 8150000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (15, N'quan', N'Delivery', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-04' AS Date), 68677000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (16, N'quan', N'Pending', 2, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-04' AS Date), 50784000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (17, N'quan', N'Complete', 2, N'', N'', N'', N'', N'', N'', 250000, N'Giao Hàng Tiết Kiệm', N'Cash', CAST(N'2023-12-04' AS Date), 27582000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (18, N'quan', N'Complete', 2, N'0966205580', N'Nguyễn Ảnh Thủ', N'Hẻm 5M', N'Phường Ngọc Trạo', N'Thành phố Thanh Hóa', N'Tỉnh Thanh Hóa', 250000, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-04' AS Date), 28002000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (19, N'quan', N'Confirm', 2, N'0966205580', N'Nguyễn Bính', N'Cho kiểm hàng', N'Phường Điện Biên', N'Quận Ba Đình', N'Thành phố Hà Nội', 250000, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-07' AS Date), 41034000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (20, N'quan', N'Confirm', 2, N'0123456789', N'Ấp Ba Lát', N'Giao Buổi Sáng', N'Phường 1', N'Thành phố Bạc Liêu', N'Tỉnh Bạc Liêu', 0, N'Giao Hàng Tiết Kiệm', N'Cash', CAST(N'2023-12-07' AS Date), 76360000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (21, N'quan', N'Pending', 2, N'', N'', N'', N'', N'', N'', 0, N'Viettel Post', N'Paypal', CAST(N'2023-12-07' AS Date), 262510000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (22, N'quan', N'Cancel', 2, N'', N'', N'', N'', N'', N'', 250000, N'Khách Hàng Đã Hủy Đơn', N'Paypal', CAST(N'2023-12-07' AS Date), 36475000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (23, N'tien', N'Confirm', 17, N'', N'', N'', N'', N'', N'', 0, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-08' AS Date), 187250000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (24, N'Mạch Văn Quân', N'Confirm', 1, N'0966205580', N'HT12', N'Giao Buổi Tối', N'Phường Phúc Xá', N'Quận Ba Đình', N'Thành phố Hà Nội', 0, N'Giao Hàng Tiết Kiệm', N'Cash', CAST(N'2023-12-11' AS Date), 174536000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (25, N'quan', N'Confirm', 21, N'', N'', N'', N'', N'', N'', 250000, N'Giao Hàng Nhanh', N'Cash', CAST(N'2023-12-11' AS Date), 23002000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (26, N'tien', N'Cancel', 17, N'', N'', N'', N'', N'', N'', 0, N'Shop Đã Hủy Đơn', N'Cash', CAST(N'2023-12-11' AS Date), 117870000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (27, N'hieu', N'Confirm', 1, N'0123456789', N'Thôn Vĩnh Biệt', N'HT12', N'Xã Phú Lâm', N'Huyện Tiên Du', N'Tỉnh Bắc Ninh', 0, N'Viettel Post', N'Cash', CAST(N'2023-12-15' AS Date), 98670000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (28, N'linh', N'Delivery', 22, N'', N'', N'', N'', N'', N'', 250000, N'Giao Hàng Nhanh', N'Paypal', CAST(N'2023-12-15' AS Date), 46950000)
INSERT [dbo].[Orders] ([id], [username], [status_id], [address_id], [ship_phone], [ship_address], [ship_notes], [ship_ward], [ship_district], [ship_province], [ship_fee], [ship_delivery], [ship_pay], [create_date], [total]) VALUES (29, N'quan', N'Confirm', 21, N'', N'', N'', N'', N'', N'', 0, N'Viettel Post', N'Cash', CAST(N'2023-12-15' AS Date), 69380000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (1, N'iPhone 15 Pro Max', 34690000, 0, 100, CAST(N'2023-01-10' AS Date), N'Thông số kỹ thuật của iPhone 15 Pro Max : 

Thông tin về iPhone 15 và các biến thể đã được tiết lộ với các thông số kỹ thuật cụ thể như sau :

- iPhone 15 có giá khởi điểm là 25.000.000 VNĐ và có màn hình kích thước 6,1 inch với tốc độ làm mới màn hình 60Hz. Nó được trang bị chip A16 Bionic và lưu trữ cơ bản 128GB. Camera sau bao gồm một camera chính 48MP và một camera siêu rộng 12MP, còn camera trước là 12MP. Pin của nó có dung lượng 3.877 mAh.

- iPhone 15 Plus có giá bán từ 30.000.000 VNĐ và có màn hình lớn hơn, 6,7 inch, cũng với tốc độ làm mới màn hình 60Hz. Nó sử dụng cùng chip A16 Bionic và lưu trữ 128GB. Hệ thống camera sau bao gồm một camera chính 48MP và một camera siêu rộng 12MP. Camera trước của nó cũng là 12MP. Pin của iPhone 15 Plus có dung lượng 4.912 mAh.

- iPhone 15 Pro có mức giá cao hơn, là 35.000.000 VNĐ với màn hình 6,1 inch có tốc độ làm mới màn hình thay đổi từ 1Hz đến 120Hz. Mẫu này sử dụng chip A17 Bionic và có lưu trữ cơ bản là 256GB. Hệ thống camera sau bao gồm một camera chính 48MP, một camera siêu rộng 12MP và một camera tele 12MP (zoom quang 3x). Camera trước vẫn là 12MP. Pin của iPhone 15 Pro có dung lượng 3.650 mAh.

- Phiên bản iPhone 15 Pro Max có giá 40.000.000 VNĐ và màn hình lớn 6,7 inch, có thể có tốc độ làm mới màn hình từ 1Hz đến 120Hz. Nó sử dụng chip A17 Bionic và lưu trữ cơ bản là 256GB. Hệ thống camera sau giống với phiên bản Pro với một camera chính 48MP, một camera siêu rộng 12MP và một camera tele 12MP (zoom quang 6x). Camera trước vẫn là 12MP. Pin của iPhone 15 Pro Max có dung lượng 4.852 mAh.', N'9a98155b.webp', N'15promax11.jpeg', N'15promax111.jpeg', N'15promax1111.jpeg', N'15promax11111.jpeg', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (2, N'iPhone 15 Pro', 28790000, 0, 100, CAST(N'2022-01-10' AS Date), NULL, N'f61683f7.webp', N'26865658.webp', N'486ae7f7.webp', N'309760eb.webp', N'd4aaf33.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (3, N'iPhone 15 Plus', 25990000, 0, 100, CAST(N'2021-10-10' AS Date), NULL, N'1e38f55b.webp', N'8d36302.webp', N'553a24fe.webp', N'3ca7a42a.webp', N'b55fdf06.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (4, N'iPhone 15', 22990000, 0, 100, CAST(N'2020-10-10' AS Date), NULL, N'876a9634.webp', N'65f272d6.webp', N'8774c576.webp', N'3225e728.webp', N'd9666e42.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (5, N'iPhone 14 Pro Max', 29490000, 0, 100, CAST(N'2019-10-10' AS Date), NULL, N'edc08299.webp', N'341d0316.webp', N'61610e0c.webp', N'24460bf7.webp', N'16dc3080.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (6, N'MacBook Pro M3 Max 2023', 79990000, 0, 100, CAST(N'2023-10-13' AS Date), NULL, N'3d00b4f1.webp', N'4f09e4f4.webp', N'ab73b975.webp', N'5249b944.webp', N'992a49d2.webp', 1, 2)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (7, N'MacBook Air M2 2023', 36490000, 0, 100, CAST(N'2023-10-13' AS Date), NULL, N'9253138a.webp', N'75d632e3.webp', N'9c751ff2.webp', N'72b74021.webp', N'87e11bab.webp', 1, 2)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (8, N'MacBook Pro 2023 M2 Pro', 62490000, 0, 100, CAST(N'2023-10-13' AS Date), NULL, N'bd79c7e6.webp', N'683c5594.webp', N'64769149.webp', N'a884b5db.webp', N'b9ed3548.webp', 1, 2)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (9, N'MacBook Air M2 2022', 33690000, 0, 100, CAST(N'2023-10-13' AS Date), NULL, N'3a92c1ea.webp', N'd6095f74.webp', N'fb45f6d1.webp', N'd93d809d.webp', N'81f5654d.webp', 1, 2)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (10, N'MacBook Pro 13 M2 2022', 41690000, 0, 100, CAST(N'2023-10-13' AS Date), NULL, N'b393bdd5.webp', N'e87da20.webp', N'a1d4758b.webp', N'5450d5a6.webp', N'576d25ea.webp', 1, 2)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (11, N'iPad Pro M2 12.9', 32090000, 0, 100, CAST(N'2023-10-15' AS Date), NULL, N'9a189b33.webp', N'8e152d38.webp', N'db3f7daf.webp', N'5fa43dca.webp', N'6bbe30c9.webp', 1, 3)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (12, N'iPad Pro M2 11', 23990000, 0, 100, CAST(N'2023-10-15' AS Date), NULL, N'57a294e1.webp', N'd4934b7.webp', N'd695820c.webp', N'926aaad.webp', N'e586f882.webp', 1, 3)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (13, N'iPad 10 WiFi', 14290000, 0, 100, CAST(N'2023-10-15' AS Date), NULL, N'f0de8293.webp', N'3c3c6ccf.webp', N'ddc9ef8c.webp', N'554cc8c6.webp', N'5b6890e4.webp', 1, 3)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (14, N'iPad Air 5 WiFi', 20090000, 0, 100, CAST(N'2023-10-15' AS Date), NULL, N'9b6297e8.webp', N'19556d37.webp', N'9b693ec2.webp', N'f4da6a88.webp', N'eb5e6db8.webp', 1, 3)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (15, N'iPad Air 5', 15490000, 0, 100, CAST(N'2023-10-15' AS Date), NULL, N'ipad5.jpeg', N'ccc74c16.webp', N'12dbed59.webp', N'386ebeb4.webp', N'9763abf1.webp', 1, 3)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (16, N'Apple Watch SE 2023', 6390000, 0, 100, CAST(N'2023-10-18' AS Date), NULL, N'watch1.jpeg', N'b78732c.webp', N'1bf921e5.webp', N'ec627a67.webp', N'a912f208.webp', 1, 4)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (17, N'Apple Watch Series 9', 11290000, 0, 100, CAST(N'2023-10-18' AS Date), NULL, N'watch2.jpeg', N'9242589.webp', N'334fc2d2.webp', N'db8115b8.webp', N'bdd6bfb.webp', 1, 4)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (18, N'Apple Watch Ultra 2', 21990000, 0, 100, CAST(N'2023-10-18' AS Date), NULL, N'watch3.jpeg', N'9242589.webp', N'334fc2d2.webp', N'db8115b8.webp', N'bdd6bfb.webp', 1, 4)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (19, N'Apple Watch Series 8', 17490000, 0, 100, CAST(N'2023-10-18' AS Date), NULL, N'watch4.jpeg', N'9242589.webp', N'334fc2d2.webp', N'db8115b8.webp', N'bdd6bfb.webp', 1, 4)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (20, N'Apple Watch SE 2022', 7990000, 0, 100, CAST(N'2023-10-18' AS Date), NULL, N'3deb2dac.webp', N'9242589.webp', N'334fc2d2.webp', N'db8115b8.webp', N'bdd6bfb.webp', 1, 4)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (21, N'Loa Bluetooth JBL', 11030000, 0, 100, CAST(N'2023-10-25' AS Date), NULL, N'9d67effe.webp', N'a.webp', N'b.webp', N'c.webp', N'd.webp', 1, 5)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (22, N'Micro Shure MV7', 7790000, 0, 100, CAST(N'2023-10-25' AS Date), NULL, N'ce7eb207.webp', N'a.webp', N'b.webp', N'c.webp', N'd.webp', 1, 5)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (23, N'Loa Bluetooth Harman', 8990000, 0, 100, CAST(N'2023-10-25' AS Date), NULL, N'6961a5a7.webp', N'a.webp', N'b.webp', N'c.webp', N'd.webp', 1, 5)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (24, N'Tai Nghe Apple MDR', 520000, 0, 100, CAST(N'2023-10-25' AS Date), NULL, N'1b5cf22.webp', N'a.webp', N'b.webp', N'c.webp', N'd.webp', 1, 5)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (25, N'Tai Nghe Beats Fit Pro', 4390000, 0, 100, CAST(N'2023-10-25' AS Date), NULL, N'5fbb9436.webp', N'a.webp', N'b.webp', N'c.webp', N'd.webp', 1, 5)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (26, N'Apple Pencil', 2310000, 0, 100, CAST(N'2023-10-20' AS Date), NULL, N'c258d7aa.webp', N'637cfe6c.webp', N'b5a2154e.webp', N'a8c1940.webp', N'f3346663.webp', 1, 6)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (27, N'Magic Mouse', 1990000, 0, 100, CAST(N'2023-10-20' AS Date), NULL, N'c8ec77d2.webp', N'c9427aaf.webp', N'70e35491.webp', N'75dc2654.webp', N'3472f1e9.webp', 1, 6)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (28, N'Cáp sạc Magnetic Type C', 820000, 0, 100, CAST(N'2023-10-20' AS Date), NULL, N'2396d65f.webp', N'637cfe6c.webp', N'b5a2154e.webp', N'a8c1940.webp', N'f3346663.webp', 1, 6)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (29, N'AirTag', 790000, 0, 100, CAST(N'2023-10-20' AS Date), NULL, N'7b095ed7.webp', N'637cfe6c.webp', N'b5a2154e.webp', N'a8c1940.webp', N'f3346663.webp', 1, 6)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (31, N'iPhone 14 Plus', 21590000, 0, 100, CAST(N'2020-11-24' AS Date), NULL, N'6ec9b368.webp', N'6e505897.webp', N'f27e9e91.webp', N'b9c4beaf.webp', N'7f5dffaa.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (32, N'iPhone 14 Pro', 24590000, 0, 100, CAST(N'2020-12-24' AS Date), NULL, N'8ed50f0b.webp', N'683e33ed.webp', N'8c63ab91.webp', N'856bea25.webp', N'd7a2a8a9.webp', 1, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (33, N'iPhone 14', 21990000, 0, 100, CAST(N'2020-10-24' AS Date), NULL, N'b08f72c8.webp', N'cc81f08f.webp', N'2427b98f.webp', N'108e23a9.webp', N'939c24e1.webp', 0, 1)
INSERT [dbo].[Products] ([id], [name], [price], [sale], [quantity], [create_date], [describe], [image], [image1], [image2], [image3], [image4], [available], [category_id]) VALUES (34, N'Magic Keyboard', 3190000, 0, 100, CAST(N'2020-10-24' AS Date), NULL, N'a91d9255.webp', N'bc75524f.webp', N'6dbf479f.webp', N'bc75524f.webp', N'6dbf479f.webp', 1, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([id], [username], [product_id], [image], [comment], [create_date]) VALUES (1, N'quan', 1, N'review1.jpg', N'Dynamic Island hiển thị linh động các cảnh báo và Hoạt Động Trực Tiếp, nhờ đó bạn sẽ không bỏ lỡ thông tin khi đang làm việc khác. Bạn có thể điều khiển nhạc, xem ai đang gọi đến, kiểm tra tình trạng chuyến bay của mình và hơn thế nữa.', CAST(N'2023-03-28T12:36:00.000' AS DateTime))
INSERT [dbo].[Reviews] ([id], [username], [product_id], [image], [comment], [create_date]) VALUES (2, N'hieu', 1, N'review2.jpg', N'Muốn nhanh chóng ghi lại khoảnh khắc trước khi nó qua đi? Bạn không còn phải chuyển sang chế độ Chân Dung nữa. Nếu chủ thể được chụp là người, thú cưng như chó hay mèo, iPhone 15 sẽ tự động thu nhận thông tin chiều sâu. Nhờ đó, bạn có thể chọn để ngay lập tức xem ảnh vừa chụp như ảnh chân dung, với hiệu ứng làm mờ đầy nghệ thuật. Hoặc sau đó bạn có thể chỉnh ảnh thường thành ảnh chân dung trong ứng dụng Ảnh.', CAST(N'2023-03-30T20:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'STAFF', N'Staffs')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'USER', N'Users')
GO
INSERT [dbo].[Vouchers] ([id], [price], [decribe], [start_date], [end_date], [quantity], [active]) VALUES (N'APPLE-2023', 3000000, N'Đơn Tối Thiểu 30.000.000 VNĐ Giảm tối đa 3.000.000 VNĐ', CAST(N'2023-11-10' AS Date), CAST(N'2023-11-24' AS Date), 10, 1)
INSERT [dbo].[Vouchers] ([id], [price], [decribe], [start_date], [end_date], [quantity], [active]) VALUES (N'BLACK-FRIDAY', 10000000, N'Đơn Tối Thiểu 100.000.000 VNĐ Giảm tối đa 10.000.000 VNĐ', CAST(N'2023-11-20' AS Date), CAST(N'2024-01-01' AS Date), 10, 1)
INSERT [dbo].[Vouchers] ([id], [price], [decribe], [start_date], [end_date], [quantity], [active]) VALUES (N'CYBER-MONDAY', 5000000, N'Đơn Tối Thiểu 50.000.000 VNĐ Giảm tối đa 5.000.000 VNĐ', CAST(N'2023-11-10' AS Date), CAST(N'2024-01-01' AS Date), 10, 1)
INSERT [dbo].[Vouchers] ([id], [price], [decribe], [start_date], [end_date], [quantity], [active]) VALUES (N'SUPER-TEAM', 15000000, N'Đơn Tối Thiểu 150.000.000 VNĐ Giảm tối đa 15.000.000 VNĐ', CAST(N'2023-11-20' AS Date), CAST(N'2024-01-01' AS Date), 10, 1)
GO
ALTER TABLE [dbo].[Account_address]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_Users] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Account_address] CHECK CONSTRAINT [FK_UserAddress_Users]
GO
ALTER TABLE [dbo].[Account_voucher]  WITH CHECK ADD  CONSTRAINT [FK_Account_voucher_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Account_voucher] CHECK CONSTRAINT [FK_Account_voucher_Accounts]
GO
ALTER TABLE [dbo].[Account_voucher]  WITH CHECK ADD  CONSTRAINT [FK_Account_voucher_Vouchers] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Vouchers] ([id])
GO
ALTER TABLE [dbo].[Account_voucher] CHECK CONSTRAINT [FK_Account_voucher_Vouchers]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Users] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Users]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Users] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Users]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Orders]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account_address] FOREIGN KEY([address_id])
REFERENCES [dbo].[Account_address] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account_address]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Order_status] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Order_status]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO
