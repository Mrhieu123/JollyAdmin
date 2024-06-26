USE [master]
GO
/****** Object:  Database [JollyShoppingOnline]    Script Date: 11/10/2023 10:49:29 AM ******/
CREATE DATABASE [JollyShoppingOnline]
GO
ALTER DATABASE [JollyShoppingOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JollyShoppingOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JollyShoppingOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JollyShoppingOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JollyShoppingOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JollyShoppingOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JollyShoppingOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JollyShoppingOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JollyShoppingOnline] SET  MULTI_USER 
GO
ALTER DATABASE [JollyShoppingOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JollyShoppingOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JollyShoppingOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JollyShoppingOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JollyShoppingOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JollyShoppingOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JollyShoppingOnline', N'ON'
GO
ALTER DATABASE [JollyShoppingOnline] SET QUERY_STORE = OFF
GO
USE [JollyShoppingOnline]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](255) NULL,
	[district] [nvarchar](255) NULL,
	[ward] [nvarchar](255) NULL,
	[street] [nvarchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[shortContent] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[publishedDate] [datetime] NULL,
	[image] [nvarchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[hex] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[blog_id] [int] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK__Comment__3213E83FDF739FFD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [text] NULL,
	[product_id] [int] NULL,
	[color_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[cart_id] [int] NULL,
	[quantity] [int] NULL,
	[size] [nchar](50) NULL,
	[color] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[total] [float] NULL,
	[date] [date] NULL,
	[status] [nvarchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[size] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[gender] [nvarchar](255) NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[product_id] [int] NOT NULL,
	[color_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[product_id] [int] NOT NULL,
	[size_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
	[date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[role] [nvarchar](255) NULL,
	[wishlist_id] [int] NULL,
	[cart_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishItem]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wishlist_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 11/10/2023 10:49:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (1, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 1)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (2, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 2)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (3, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 3)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (4, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 4)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (5, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 5)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (6, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 6)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (7, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 7)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (8, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 8)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (9, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 9)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (10, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 10)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (11, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 11)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (12, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 12)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (13, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 13)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (14, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 14)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (15, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 15)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (16, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 16)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (17, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 17)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (18, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 18)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (19, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 19)
INSERT [dbo].[Address] ([id], [city], [district], [ward], [street], [user_id]) VALUES (20, N'Hà Nội', N'Hà Đông', N'La Khê', N'Số 1 Ngõ 1 Tổ 1', 20)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (1, N'TOP 16 Cách phối đồ với boot ulzzang cực cá tính, sành điệu', N'Diện mạo sành điệu, trẻ trung và cá tính là những gì bạn nhận được khi mix đồ với boot ulzzang. Dưới đây, YODY sẽ chia sẻ các cách phối đồ với boot ulzzang chuẩn style Hàn Quốc nhất!', N'<h2 dir="ltr">1. Boot ulzzang l&agrave; g&igrave;? Đ&ocirc;i n&eacute;t về boot ulzzang</h2>

<p dir="ltr"><img alt="Giới thiệu về boot ulzzang" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-boot-ulzzang-yodyvn.jpg?v=1698895390352" /></p>

<p dir="ltr"><em>Giới thiệu về boot ulzzang</em></p>

<p dir="ltr">Gi&agrave;y boot, với ưu điểm về k&iacute;ch thước v&agrave; kiểu d&aacute;ng đặc trưng, thường l&agrave;m từ da hoặc cao su, bao phủ to&agrave;n b&agrave;n ch&acirc;n, tạo ra sự ấm &aacute;p v&agrave; bảo vệ. C&oacute; hai kiểu ch&iacute;nh: boot cổ thấp (cao đến mắt c&aacute; ch&acirc;n) v&agrave; boot cổ cao (cao đến đ&ugrave;i hoặc thậm ch&iacute; đầu gối).</p>

<p dir="ltr">Tuy nhi&ecirc;n, trong thế giới thời trang, boot ulzzang - một thuật ngữ phổ biến trong cộng đồng trẻ H&agrave;n Quốc - đặc biệt chỉ v&agrave;o những loại gi&agrave;y boot như Ankle Boots, Lita Boots, Knee High Boots... Những mẫu gi&agrave;y boot n&agrave;y kh&ocirc;ng chỉ đơn thuần l&agrave; một đ&ocirc;i gi&agrave;y, m&agrave; c&ograve;n l&agrave; biểu tượng cho phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng. Với sự kết hợp độc đ&aacute;o c&ugrave;ng trang phục, phong c&aacute;ch ulzzang đ&atilde; tạo n&ecirc;n cơn sốt trong l&agrave;ng thời trang, khiến ch&uacute;ng trở n&ecirc;n phổ biến v&agrave; được săn đ&oacute;n rộng r&atilde;i.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n250K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-khoac-gio-nu-3c-plus" title="Áo Khoác Gió Nữ 3C Plus Năng Động"><img alt="Áo Khoác Gió Nữ 3C Plus Năng Động" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/akn5040-cam-4-1c797839-d544-45ec-9c47-d5bcfd0bfa70.jpg?v=1681354792000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-khoac-gio-nu-3c-plus" title="">&Aacute;o Kho&aacute;c Gi&oacute; Nữ 3C Plus Năng Động</a></h3>

<p>499.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102016157">Cam / S - 499.000đ</option>&nbsp;<option value="102016158">Cam / M - 499.000đ</option>&nbsp;<option value="102016159">Cam / L - 499.000đ</option>&nbsp;<option value="102016160">Cam / XL - 499.000đ</option>&nbsp;<option value="102016161">Hồng / S - 499.000đ</option>&nbsp;<option value="102016162">Hồng / M - 499.000đ</option>&nbsp;<option value="102016163">Hồng / L - 499.000đ</option>&nbsp;<option value="102016164">Hồng / XL - 499.000đ</option>&nbsp;<option value="102016165">Xanh trời / S - 499.000đ</option>&nbsp;<option value="102016166">Xanh trời / M - 499.000đ</option>&nbsp;<option value="102016167">Xanh trời / L - 499.000đ</option>&nbsp;<option value="102016168">Xanh trời / XL - 499.000đ</option>&nbsp;<option value="102016169">V&agrave;ng / S - 499.000đ</option>&nbsp;<option value="102016170">V&agrave;ng / M - 499.000đ</option>&nbsp;<option value="102016171">V&agrave;ng / L - 499.000đ</option>&nbsp;<option value="102016172">V&agrave;ng / XL - 499.000đ</option>&nbsp;<option value="102016173">Đen / S - 499.000đ</option>&nbsp;<option value="102016174">Đen / M - 499.000đ</option>&nbsp;<option value="102016175">Đen / L - 499.000đ</option>&nbsp;<option value="102016176">Đen / XL - 499.000đ</option>&nbsp;<option value="102016177">T&iacute;m than / S - 499.000đ</option>&nbsp;<option value="102016178">T&iacute;m than / M - 499.000đ</option>&nbsp;<option value="102016179">T&iacute;m than / L - 499.000đ</option>&nbsp;<option value="102016180">T&iacute;m than / XL - 499.000đ</option>&nbsp;<option value="102016181">Xanh than / S - 499.000đ</option>&nbsp;<option value="102016182">Xanh than / M - 499.000đ</option>&nbsp;<option value="102016183">Xanh than / L - 499.000đ</option>&nbsp;<option value="102016184">Xanh than / XL - 499.000đ</option>&nbsp;<option value="102016185">Ghi / S - 499.000đ</option>&nbsp;<option value="102016186">Ghi / M - 499.000đ</option>&nbsp;<option value="102016187">Ghi / L - 499.000đ</option>&nbsp;<option value="102016188">Ghi / XL - 499.000đ</option>&nbsp;<option value="102016189">V&agrave;ng. / S - 499.000đ</option>&nbsp;<option value="102016190">V&agrave;ng. / M - 499.000đ</option>&nbsp; </select></p>
</form>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n261K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-gio-nam-3c-plus" title="Áo Khoác Gió Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gió, Cản Bụi"><img alt="Áo Khoác Gió Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gió, Cản Bụi" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/akm5037-den-1.jpg?v=1698051167000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-gio-nam-3c-plus" title="">&Aacute;o Kho&aacute;c Gi&oacute; Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gi&oacute;, Cản Bụi</a></h3>

<p>499.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102016047">Đen / M - 499.000đ</option>&nbsp;<option value="102016048">Đen / L - 499.000đ</option>&nbsp;<option value="102016049">Đen / XL - 499.000đ</option>&nbsp;<option value="102016050">Đen / 2XL - 499.000đ</option>&nbsp;<option value="102016051">Đen / 3XL - 499.000đ</option>&nbsp;<option value="102016052">Xanh than / M - 499.000đ</option>&nbsp;<option value="102016053">Xanh than / L - 499.000đ</option>&nbsp;<option value="102016054">Xanh than / XL - 499.000đ</option>&nbsp;<option value="102016055">Xanh than / 2XL - 499.000đ</option>&nbsp;<option value="102016056">Xanh than / 3XL - 499.000đ</option>&nbsp;<option value="102016057">T&iacute;m than / M - 499.000đ</option>&nbsp;<option value="102016058">T&iacute;m than / L - 499.000đ</option>&nbsp;<option value="102016059">T&iacute;m than / XL - 499.000đ</option>&nbsp;<option value="102016060">T&iacute;m than / 2XL - 499.000đ</option>&nbsp;<option value="102016061">T&iacute;m than / 3XL - 499.000đ</option>&nbsp;<option value="102016062">Ghi / M - 499.000đ</option>&nbsp;<option value="102016063">Ghi / L - 499.000đ</option>&nbsp;<option value="102016064">Ghi / XL - 499.000đ</option>&nbsp;<option value="102016065">Ghi / 2XL - 499.000đ</option>&nbsp;<option value="102016066">Ghi / 3XL - 499.000đ</option>&nbsp;<option value="102016067">Cam / M - 499.000đ</option>&nbsp;<option value="102016068">Cam / L - 499.000đ</option>&nbsp;<option value="102016069">Cam / XL - 499.000đ</option>&nbsp;<option value="102016070">Cam / 2XL - 499.000đ</option>&nbsp;<option value="102016071">Cam / 3XL - 499.000đ</option>&nbsp;<option value="102016072">Xanh trời / M - 499.000đ</option>&nbsp;<option value="102016073">Xanh trời / L - 499.000đ</option>&nbsp;<option value="102016074">Xanh trời / XL - 499.000đ</option>&nbsp;<option value="102016075">Xanh trời / 2XL - 499.000đ</option>&nbsp;<option value="102016076">Xanh trời / 3XL - 499.000đ</option>&nbsp;<option value="102016077">N&acirc;u t&acirc;y / M - 499.000đ</option>&nbsp;<option value="102016078">N&acirc;u t&acirc;y / L - 499.000đ</option>&nbsp;<option value="102016079">N&acirc;u t&acirc;y / XL - 499.000đ</option>&nbsp;<option value="102016080">N&acirc;u t&acirc;y / 2XL - 499.000đ</option>&nbsp;<option value="102016081">N&acirc;u t&acirc;y / 3XL - 499.000đ</option>&nbsp;<option value="102016082">V&agrave;ng c&aacute;t / M - 499.000đ</option>&nbsp;<option value="102016083">V&agrave;ng c&aacute;t / L - 499.000đ</option>&nbsp;<option value="102016084">V&agrave;ng c&aacute;t / XL - 499.000đ</option>&nbsp;<option value="102016085">V&agrave;ng c&aacute;t / 2XL - 499.000đ</option>&nbsp;<option value="102016086">V&agrave;ng c&aacute;t / 3XL - 499.000đ</option>&nbsp; </select></p>
</form>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n53.4K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-polo-the-thao-nam-active-melange-in-phan-quang" title="Áo Polo Thể Thao Nam Active Melange In Phản Quang"><img alt="Áo Polo Thể Thao Nam Active Melange In Phản Quang" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/sam5009-ddo-14.jpg?v=1688723448000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-polo-the-thao-nam-active-melange-in-phan-quang" title="">&Aacute;o Polo Thể Thao Nam Active Melange In Phản Quang</a></h3>

<p>349.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102021407">Đỏ / M - 349.000đ</option>&nbsp;<option value="102021408">Đỏ / L - 349.000đ</option>&nbsp;<option value="102021409">Đỏ / XL - 349.000đ</option>&nbsp;<option value="102021410">Đỏ / 2XL - 349.000đ</option>&nbsp;<option value="102021411">Đen / M - 349.000đ</option>&nbsp;<option value="102021412">Đen / L - 349.000đ</option>&nbsp;<option value="102021413">Đen / XL - 349.000đ</option>&nbsp;<option value="102021414">Đen / 2XL - 349.000đ</option>&nbsp;<option value="102021415">Xanh navy / M - 349.000đ</option>&nbsp;<option value="102021416">Xanh navy / L - 349.000đ</option>&nbsp;<option value="102021417">Xanh navy / XL - 349.000đ</option>&nbsp;<option value="102021418">Xanh navy / 2XL - 349.000đ</option>&nbsp;<option value="102021419">Ghi / M - 349.000đ</option>&nbsp;<option value="102021420">Ghi / L - 349.000đ</option>&nbsp;<option value="102021421">Ghi / XL - 349.000đ</option>&nbsp;<option value="102021422">Ghi / 2XL - 349.000đ</option>&nbsp;<option value="102021423">Xanh / M - 349.000đ</option>&nbsp;<option value="102021424">Xanh / L - 349.000đ</option>&nbsp;<option value="102021425">Xanh / XL - 349.000đ</option>&nbsp;<option value="102021426">Xanh / 2XL - 349.000đ</option>&nbsp; </select></p>
</form>

<h2 dir="ltr">2. Những loại boot ulzzang thịnh h&agrave;nh nhất hiện nay</h2>

<h3 dir="ltr">2.1 Boot ulzzang cao cổ</h3>

<p dir="ltr"><img alt="Boot ulzzang cao cổ" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-boot-ulzzang-yodyvn1.jpg?v=1698895412459" /></p>

<p dir="ltr"><em>Boot ulzzang cao cổ</em></p>

<p dir="ltr">Những đ&ocirc;i gi&agrave;y boot ulzzang cổ cao đến đầu gối đ&atilde; tạo n&ecirc;n cơn sốt trong thị trường gi&agrave;y d&eacute;p mỗi khi m&ugrave;a đ&ocirc;ng về. Kiểu d&aacute;ng của ch&uacute;ng kh&ocirc;ng chỉ cung cấp sự bảo vệ tốt cho đ&ocirc;i ch&acirc;n m&agrave; c&ograve;n tạo n&ecirc;n một vẻ &quot;lạnh l&ugrave;ng&quot; đầy phong c&aacute;ch, tuy nhi&ecirc;n ch&uacute;ng c&oacute; thể kh&aacute; k&eacute;n d&aacute;ng với một số người.</p>

<h3 dir="ltr">2.2 Boot ulzzang cổ thấp</h3>

<p dir="ltr"><img alt="Boot ulzzang cổ thấp" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-boot-ulzzang-yodyvn24.webp?v=1698895534612" /></p>

<p dir="ltr"><em>Boot ulzzang cổ thấp</em></p>

<p dir="ltr">Boot ulzzang cổ thấp thường c&oacute; độ cao chỉ l&ecirc;n đến mắt c&aacute; ch&acirc;n. Ch&uacute;ng thường c&oacute; thiết kế đơn giản nhưng vẫn rất phong c&aacute;ch v&agrave; dễ d&agrave;ng phối hợp với nhiều loại trang phục kh&aacute;c nhau. Đ&ocirc;i gi&agrave;y n&agrave;y kh&ocirc;ng chỉ mang t&iacute;nh chất thời trang m&agrave; c&ograve;n tạo n&ecirc;n sự thoải m&aacute;i cho người mang, đồng thời th&iacute;ch hợp cho nhiều dịp kh&aacute;c nhau.</p>

<h3 dir="ltr">2.3 Ankle boot</h3>

<p dir="ltr"><img alt=" Ankle boot" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-boot-ulzzang-yodyvn2-88ad0d99-f81f-48fe-82e5-bde2d4492e99.jpg?v=1698895553511" /></p>

<p dir="ltr"><em>&nbsp;Ankle boot</em></p>

<p dir="ltr">Ankle Boots l&agrave; loại gi&agrave;y boot c&oacute; phần cổ chỉ cao đến mắt c&aacute; ch&acirc;n, c&oacute; đa dạng về g&oacute;t nhọn hoặc g&oacute;t vu&ocirc;ng, với nhiều lựa chọn về chất liệu, họa tiết v&agrave; m&agrave;u sắc. Đ&acirc;y l&agrave; phụ kiện thời trang kh&ocirc;ng chỉ giữ ấm m&agrave; c&ograve;n tạo điểm nhấn về phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh cho ph&aacute;i đẹp. Ankle Boots linh hoạt trong việc phối đồ, tuy nhi&ecirc;n, sự kết hợp giữa m&agrave;u sắc v&agrave; họa tiết của gi&agrave;y v&agrave; trang phục cần được c&acirc;n nhắc để tạo sự h&agrave;i h&ograve;a v&agrave; phong c&aacute;ch.<br />
&nbsp;</p>

<h2 dir="ltr">4. M&aacute;ch kh&eacute;o c&aacute;c mẹo hay khi phối đồ với boot ulzzang</h2>

<ul>
	<li dir="ltr">
	<p dir="ltr">C&acirc;n nhắc chiều cao v&agrave; d&aacute;ng v&oacute;c: Boot ulzzang cổ cao thường tạo n&ecirc;n vẻ đẹp sang trọng, nhưng ch&uacute;ng cũng kh&aacute; k&eacute;n d&aacute;ng. Hợp nhất với những người c&oacute; chiều cao tốt, tạo ấn tượng tốt nhất với đ&ocirc;i ch&acirc;n d&agrave;i. Đối với những người c&oacute; chiều cao khi&ecirc;m tốn, h&atilde;y xem x&eacute;t boot ulzzang cổ ngắn để tr&aacute;nh l&agrave;m ngắn h&igrave;nh thể.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">H&agrave;i h&ograve;a m&agrave;u sắc: M&agrave;u sắc tr&ecirc;n trang phục cần phối hợp h&agrave;i h&ograve;a với boot ulzzang. M&agrave;u sắc th&ocirc;ng dụng như đen, n&acirc;u, trắng, hoặc m&agrave;u da l&agrave; sự lựa chọn an to&agrave;n v&agrave; dễ phối đồ. Tr&aacute;nh trang phục c&oacute; qu&aacute; nhiều họa tiết, đặc biệt l&agrave; khi kết hợp với boot ulzzang, để tr&aacute;nh l&agrave;m mất đi sự thanh lịch.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Tạo điểm nhấn: T&iacute;nh đa dạng trong m&agrave;u sắc giữa trang phục v&agrave; boot ulzzang c&oacute; thể tạo điểm nhấn cho trang phục. Một phụ kiện hoặc một mảng m&agrave;u kh&aacute;c biệt giữa boot v&agrave; trang phục c&oacute; thể l&agrave;m bộ trang phục th&ecirc;m phần sinh động.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Tr&aacute;nh mix boot ulzzang với v&aacute;y dạ hội: Boot ulzzang thường th&iacute;ch hợp với phong c&aacute;ch casual hoặc semi-casual. Tr&aacute;nh kết hợp ch&uacute;ng với v&aacute;y dạ hội để tr&aacute;nh sự kh&ocirc;ng h&agrave;i h&ograve;a trong trang phục.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Sự đơn giản lu&ocirc;n l&agrave; ch&igrave;a kh&oacute;a: Đ&ocirc;i khi, sự đơn giản lu&ocirc;n tạo n&ecirc;n vẻ đẹp tinh tế. Đừng sợ h&atilde;i chọn những mẫu boot ulzzang đơn giản hơn nếu bạn cảm thấy c&aacute;c mẫu phức tạp qu&aacute; kh&oacute; để phối đồ.</p>
	</li>
</ul>

<p dir="ltr">B&ecirc;n tr&ecirc;n l&agrave; 16 c&aacute;ch phối đồ với boot ulzzang s&agrave;nh điệu, chuẩn H&agrave;n Quốc nhất m&agrave;&nbsp;<a href="https://yody.vn/">YODY</a>&nbsp;đ&atilde; tổng hợp được. Mong rằng qua những c&ocirc;ng thức phối đồ n&agrave;y, c&aacute;c n&agrave;ng sẽ bổ sung th&ecirc;m nhiều c&aacute;ch mix đồ đẹp để n&acirc;ng cấp bản th&acirc;n.</p>', CAST(N'2023-10-16T16:50:03.057' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-boot-ulzzang-yodyvn24.webp?v=1698895534612', 20)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (2, N'TOP 10 set đồ đi đám cưới cho nam cực thời thượng, sành điệu', N'Đi đám cưới mặc gì cho đẹp, thời trang đôi khi nhiều anh em đau đầu. Đừng lo! Dưới đây YODY sẽ lựa chọn các set đồ đi đám cưới cho nam không bao giờ lỗi mốt và cực cuốn hút.', N'<h2 dir="ltr">1. TOP 10 set đồ đi đ&aacute;m cưới cho nam hot trend nhất hiện nay</h2>

<h3 dir="ltr">1.1 Combo &aacute;o vest, quần denim v&agrave; sneaker trẻ trung</h3>

<p dir="ltr"><img alt="Combo áo vest, quần denim và sneaker trẻ trung" src="https://bizweb.dktcdn.net/100/438/408/files/set-do-di-dam-cuoi-cho-nam-yodyvn.jpg?v=1698116510530" /></p>

<p dir="ltr"><em>Combo &aacute;o vest, quần denim v&agrave; sneaker trẻ trung</em></p>

<p dir="ltr">&Aacute;o vest l&agrave; một item thời trang kh&ocirc;ng thể thiếu trong tủ quần &aacute;o của c&aacute;c qu&yacute; &ocirc;ng. Loại &aacute;o n&agrave;y vừa lịch l&atilde;m vừa thể hiện phong c&aacute;ch ri&ecirc;ng biệt. Ngo&agrave;i việc sử dụng trong m&ocirc;i trường c&ocirc;ng sở, &aacute;o vest cũng ho&agrave;n hảo cho những dịp quan trọng như c&aacute;c buổi tiệc hoặc lễ kỷ niệm.</p>

<p dir="ltr">B&ecirc;n cạnh c&aacute;ch phối truyền thống với quần t&acirc;y v&agrave; gi&agrave;y da, đừng ngần ngại thử một phong c&aacute;ch mới bằng c&aacute;ch kết hợp &aacute;o vest với quần jeans v&agrave; gi&agrave;y sneaker. Sự kết hợp n&agrave;y sẽ mang đến một diện mạo tươi trẻ, hiện đại v&agrave; thậm ch&iacute; ph&aacute; c&aacute;ch.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n250K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-khoac-gio-nu-3c-plus" title="Áo Khoác Gió Nữ 3C Plus Năng Động"><img alt="Áo Khoác Gió Nữ 3C Plus Năng Động" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/akn5040-cam-4-1c797839-d544-45ec-9c47-d5bcfd0bfa70.jpg?v=1681354792000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-khoac-gio-nu-3c-plus" title="">&Aacute;o Kho&aacute;c Gi&oacute; Nữ 3C Plus Năng Động</a></h3>

<p>499.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102016157">Cam / S - 499.000đ</option>&nbsp;<option value="102016158">Cam / M - 499.000đ</option>&nbsp;<option value="102016159">Cam / L - 499.000đ</option>&nbsp;<option value="102016160">Cam / XL - 499.000đ</option>&nbsp;<option value="102016161">Hồng / S - 499.000đ</option>&nbsp;<option value="102016162">Hồng / M - 499.000đ</option>&nbsp;<option value="102016163">Hồng / L - 499.000đ</option>&nbsp;<option value="102016164">Hồng / XL - 499.000đ</option>&nbsp;<option value="102016165">Xanh trời / S - 499.000đ</option>&nbsp;<option value="102016166">Xanh trời / M - 499.000đ</option>&nbsp;<option value="102016167">Xanh trời / L - 499.000đ</option>&nbsp;<option value="102016168">Xanh trời / XL - 499.000đ</option>&nbsp;<option value="102016169">V&agrave;ng / S - 499.000đ</option>&nbsp;<option value="102016170">V&agrave;ng / M - 499.000đ</option>&nbsp;<option value="102016171">V&agrave;ng / L - 499.000đ</option>&nbsp;<option value="102016172">V&agrave;ng / XL - 499.000đ</option>&nbsp;<option value="102016173">Đen / S - 499.000đ</option>&nbsp;<option value="102016174">Đen / M - 499.000đ</option>&nbsp;<option value="102016175">Đen / L - 499.000đ</option>&nbsp;<option value="102016176">Đen / XL - 499.000đ</option>&nbsp;<option value="102016177">T&iacute;m than / S - 499.000đ</option>&nbsp;<option value="102016178">T&iacute;m than / M - 499.000đ</option>&nbsp;<option value="102016179">T&iacute;m than / L - 499.000đ</option>&nbsp;<option value="102016180">T&iacute;m than / XL - 499.000đ</option>&nbsp;<option value="102016181">Xanh than / S - 499.000đ</option>&nbsp;<option value="102016182">Xanh than / M - 499.000đ</option>&nbsp;<option value="102016183">Xanh than / L - 499.000đ</option>&nbsp;<option value="102016184">Xanh than / XL - 499.000đ</option>&nbsp;<option value="102016185">Ghi / S - 499.000đ</option>&nbsp;<option value="102016186">Ghi / M - 499.000đ</option>&nbsp;<option value="102016187">Ghi / L - 499.000đ</option>&nbsp;<option value="102016188">Ghi / XL - 499.000đ</option>&nbsp;<option value="102016189">V&agrave;ng. / S - 499.000đ</option>&nbsp;<option value="102016190">V&agrave;ng. / M - 499.000đ</option>&nbsp; </select></p>
</form>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n261K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-gio-nam-3c-plus" title="Áo Khoác Gió Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gió, Cản Bụi"><img alt="Áo Khoác Gió Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gió, Cản Bụi" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/akm5037-den-1.jpg?v=1698051167000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-gio-nam-3c-plus" title="">&Aacute;o Kho&aacute;c Gi&oacute; Nam 3C Plus Năng Động Chống Ngấm Nước, Cản Gi&oacute;, Cản Bụi</a></h3>

<p>499.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102016047">Đen / M - 499.000đ</option>&nbsp;<option value="102016048">Đen / L - 499.000đ</option>&nbsp;<option value="102016049">Đen / XL - 499.000đ</option>&nbsp;<option value="102016050">Đen / 2XL - 499.000đ</option>&nbsp;<option value="102016051">Đen / 3XL - 499.000đ</option>&nbsp;<option value="102016052">Xanh than / M - 499.000đ</option>&nbsp;<option value="102016053">Xanh than / L - 499.000đ</option>&nbsp;<option value="102016054">Xanh than / XL - 499.000đ</option>&nbsp;<option value="102016055">Xanh than / 2XL - 499.000đ</option>&nbsp;<option value="102016056">Xanh than / 3XL - 499.000đ</option>&nbsp;<option value="102016057">T&iacute;m than / M - 499.000đ</option>&nbsp;<option value="102016058">T&iacute;m than / L - 499.000đ</option>&nbsp;<option value="102016059">T&iacute;m than / XL - 499.000đ</option>&nbsp;<option value="102016060">T&iacute;m than / 2XL - 499.000đ</option>&nbsp;<option value="102016061">T&iacute;m than / 3XL - 499.000đ</option>&nbsp;<option value="102016062">Ghi / M - 499.000đ</option>&nbsp;<option value="102016063">Ghi / L - 499.000đ</option>&nbsp;<option value="102016064">Ghi / XL - 499.000đ</option>&nbsp;<option value="102016065">Ghi / 2XL - 499.000đ</option>&nbsp;<option value="102016066">Ghi / 3XL - 499.000đ</option>&nbsp;<option value="102016067">Cam / M - 499.000đ</option>&nbsp;<option value="102016068">Cam / L - 499.000đ</option>&nbsp;<option value="102016069">Cam / XL - 499.000đ</option>&nbsp;<option value="102016070">Cam / 2XL - 499.000đ</option>&nbsp;<option value="102016071">Cam / 3XL - 499.000đ</option>&nbsp;<option value="102016072">Xanh trời / M - 499.000đ</option>&nbsp;<option value="102016073">Xanh trời / L - 499.000đ</option>&nbsp;<option value="102016074">Xanh trời / XL - 499.000đ</option>&nbsp;<option value="102016075">Xanh trời / 2XL - 499.000đ</option>&nbsp;<option value="102016076">Xanh trời / 3XL - 499.000đ</option>&nbsp;<option value="102016077">N&acirc;u t&acirc;y / M - 499.000đ</option>&nbsp;<option value="102016078">N&acirc;u t&acirc;y / L - 499.000đ</option>&nbsp;<option value="102016079">N&acirc;u t&acirc;y / XL - 499.000đ</option>&nbsp;<option value="102016080">N&acirc;u t&acirc;y / 2XL - 499.000đ</option>&nbsp;<option value="102016081">N&acirc;u t&acirc;y / 3XL - 499.000đ</option>&nbsp;<option value="102016082">V&agrave;ng c&aacute;t / M - 499.000đ</option>&nbsp;<option value="102016083">V&agrave;ng c&aacute;t / L - 499.000đ</option>&nbsp;<option value="102016084">V&agrave;ng c&aacute;t / XL - 499.000đ</option>&nbsp;<option value="102016085">V&agrave;ng c&aacute;t / 2XL - 499.000đ</option>&nbsp;<option value="102016086">V&agrave;ng c&aacute;t / 3XL - 499.000đ</option>&nbsp; </select></p>
</form>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n53.4K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-polo-the-thao-nam-active-melange-in-phan-quang" title="Áo Polo Thể Thao Nam Active Melange In Phản Quang"><img alt="Áo Polo Thể Thao Nam Active Melange In Phản Quang" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/sam5009-ddo-14.jpg?v=1688723448000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-polo-the-thao-nam-active-melange-in-phan-quang" title="">&Aacute;o Polo Thể Thao Nam Active Melange In Phản Quang</a></h3>

<p>349.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102021407">Đỏ / M - 349.000đ</option>&nbsp;<option value="102021408">Đỏ / L - 349.000đ</option>&nbsp;<option value="102021409">Đỏ / XL - 349.000đ</option>&nbsp;<option value="102021410">Đỏ / 2XL - 349.000đ</option>&nbsp;<option value="102021411">Đen / M - 349.000đ</option>&nbsp;<option value="102021412">Đen / L - 349.000đ</option>&nbsp;<option value="102021413">Đen / XL - 349.000đ</option>&nbsp;<option value="102021414">Đen / 2XL - 349.000đ</option>&nbsp;<option value="102021415">Xanh navy / M - 349.000đ</option>&nbsp;<option value="102021416">Xanh navy / L - 349.000đ</option>&nbsp;<option value="102021417">Xanh navy / XL - 349.000đ</option>&nbsp;<option value="102021418">Xanh navy / 2XL - 349.000đ</option>&nbsp;<option value="102021419">Ghi / M - 349.000đ</option>&nbsp;<option value="102021420">Ghi / L - 349.000đ</option>&nbsp;<option value="102021421">Ghi / XL - 349.000đ</option>&nbsp;<option value="102021422">Ghi / 2XL - 349.000đ</option>&nbsp;<option value="102021423">Xanh / M - 349.000đ</option>&nbsp;<option value="102021424">Xanh / L - 349.000đ</option>&nbsp;<option value="102021425">Xanh / XL - 349.000đ</option>&nbsp;<option value="102021426">Xanh / 2XL - 349.000đ</option>&nbsp; </select></p>
</form>

<h3 dir="ltr">1.2 Set đồ đi đ&aacute;m cưới cho nam ngầu - &aacute;o kho&aacute;c da, quần denim v&agrave; gi&agrave;y boot</h3>

<p dir="ltr"><img alt="Set đồ đi đám cưới cho nam cá tính mạnh" src="https://bizweb.dktcdn.net/100/438/408/files/set-do-di-dam-cuoi-cho-nam-yodyvn1.jpg?v=1698116525013" /></p>

<p dir="ltr"><em>Set đồ đi đ&aacute;m cưới cho nam c&aacute; t&iacute;nh mạnh</em></p>

<p dir="ltr">Sức cuốn h&uacute;t của &aacute;o kho&aacute;c da kh&ocirc;ng bao giờ phai mờ. Khi bạn kết hợp &aacute;o kho&aacute;c da với quần jean v&agrave; đ&ocirc;i gi&agrave;y Chelsea, bạn sẽ biến đổi diện mạo của m&igrave;nh th&agrave;nh một phong c&aacute;ch thời thượng đầy l&ocirc;i cuốn. Việc n&agrave;y kh&ocirc;ng chỉ ph&ugrave; hợp cho c&aacute;c sự kiện quan trọng như đ&aacute;m cưới m&agrave; c&ograve;n cho bất kỳ dịp n&agrave;o. H&atilde;y thử ngay!</p>

<h3 dir="ltr">1.3 Phối layer với blazer, &aacute;o ph&ocirc;ng v&agrave; quần &acirc;u thanh lịch</h3>

<p dir="ltr"><img alt="Outfit blazer, áo thun và quần âu lịch lãm" src="https://bizweb.dktcdn.net/100/438/408/files/set-do-di-dam-cuoi-cho-nam-yodyvn2.jpg?v=1698116551947" /></p>

<p dir="ltr"><em>Outfit blazer, &aacute;o thun v&agrave; quần &acirc;u lịch l&atilde;m</em></p>

<p dir="ltr">Kh&ocirc;ng n&ecirc;n bỏ lỡ cơ hội kết hợp &aacute;o blazer v&agrave; &aacute;o thun với quần &acirc;u khi bạn dự tiệc đ&aacute;m cưới. Sự kết hợp n&agrave;y kh&ocirc;ng chỉ mang đến vẻ lịch l&atilde;m m&agrave; c&ograve;n l&agrave;m bạn nổi bật giữa đ&aacute;m đ&ocirc;ng. Để l&agrave;m cho bộ trang phục trở n&ecirc;n ho&agrave;n hảo, đừng qu&ecirc;n chọn một đ&ocirc;i gi&agrave;y sneaker thời thượng để kết hợp c&ugrave;ng.</p>

<h3 dir="ltr">1.4 Set đồ đi đ&aacute;m cưới cho nam thời thượng cho m&ugrave;a h&egrave; - &Aacute;o polo v&agrave; quần t&acirc;y</h3>

<p dir="ltr"><img alt="Set đồ đi đám cưới cho nam thời thượng" src="https://bizweb.dktcdn.net/100/438/408/files/set-do-di-dam-cuoi-cho-nam-yodyvn3.jpg?v=1698116576318" /></p>

<p dir="ltr"><em>Set đồ đi đ&aacute;m cưới cho nam thời thượng</em></p>

<p dir="ltr">Mặc d&ugrave; đơn giản, nhưng set đồ đi đ&aacute;m cưới cho nam kh&ocirc;ng hề k&eacute;m phần ấn tượng tại bất kỳ đ&aacute;m cưới n&agrave;o. C&aacute;c mẫu &aacute;o polo c&oacute; m&agrave;u s&aacute;ng sẽ l&agrave;m nổi bật đ&ocirc;i vai rộng v&agrave; sự trẻ trung của bạn. Bộ trang phục n&agrave;y đặc biệt th&iacute;ch hợp cho c&aacute;c qu&yacute; &ocirc;ng c&oacute; thể h&igrave;nh c&acirc;n đối.<br />
&nbsp;</p>

<h2 dir="ltr">3. Đi đ&aacute;m cưới cần lưu &yacute; những điều g&igrave;?</h2>

<p dir="ltr">Việc tham dự một đ&aacute;m cưới đ&ograve;i hỏi kh&ocirc;ng chỉ việc lựa chọn trang phục ph&ugrave; hợp với kh&ocirc;ng gian v&agrave; phong c&aacute;ch của sự kiện, m&agrave; c&ograve;n cần quan t&acirc;m đến c&aacute;c vấn đề x&atilde; hội v&agrave; giao tiếp để c&oacute; trải nghiệm tốt hơn:</p>

<ul>
	<li dir="ltr">
	<p dir="ltr">Đến sớm hoặc đ&uacute;ng giờ: Đến đ&aacute;m cưới đ&uacute;ng giờ l&agrave; một biểu hiện của sự t&ocirc;n trọng với cặp đ&ocirc;i v&agrave; kh&aacute;ch mời kh&aacute;c. N&oacute; cũng cung cấp thời gian để chuẩn bị v&agrave; ch&agrave;o mừng c&ocirc; d&acirc;u v&agrave; ch&uacute; rể.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Gửi lời ch&uacute;c mừng: Gửi lời ch&uacute;c mừng trực tiếp cho cặp đ&ocirc;i để thể hiện t&igrave;nh cảm của bạn. Một số lời ch&uacute;c phổ biến bao gồm lời ch&uacute;c hạnh ph&uacute;c, t&igrave;nh y&ecirc;u v&agrave; sự trọn đời, v&agrave; lời ch&uacute;c tốt đẹp cho tương lai.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Giao lưu vớimọi người: Đ&aacute;m cưới l&agrave; dịp tuyệt vời để l&agrave;m quen v&agrave; n&oacute;i chuyện với mọi người, cả những người bạn đ&atilde; biết v&agrave; những người mới. H&atilde;y lịch sự, th&acirc;n thiện v&agrave; mở l&ograve;ng để tạo ra c&aacute;c mối quan hệ tốt.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Tr&aacute;nh sử dụng điện thoại qu&aacute; nhiều: H&atilde;y tr&aacute;nh việc sử dụng điện thoại di động qu&aacute; nhiều tại đ&aacute;m cưới. Điều n&agrave;y sẽ gi&uacute;p bạn tập trung v&agrave;o sự kiện v&agrave; kh&ocirc;ng l&agrave;m phiền người kh&aacute;c. Thay v&igrave; chụp h&igrave;nh v&agrave; đăng ảnh tr&ecirc;n mạng x&atilde; hội, h&atilde;y tận hưởng thời gian v&agrave; kỷ niệm thực tế tại đ&aacute;m cưới.</p>
	</li>
</ul>

<p dir="ltr">B&ecirc;n tr&ecirc;n&nbsp;<a href="https://yody.vn/">YODY</a>&nbsp;đ&atilde; chia sẻ c&aacute;c set đồ đi đ&aacute;m cưới cho nam s&agrave;nh điệu, kh&ocirc;ng lo lỗi mốt. Mong rằng qua những c&ocirc;ng thức phối đồ n&agrave;y, c&aacute;c ch&agrave;ng trai sẽ lựa được cho m&igrave;nh outfit ph&ugrave; hợp nhất để trở n&ecirc;n thời thượng khi đi đ&aacute;m cưới.</p>
', CAST(N'2023-10-16T16:50:03.000' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/set-do-di-dam-cuoi-cho-nam-yodyvn10.jpg?v=1698116739945', 2)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (3, N'Bật mí 10+ cách phối đồ với áo cardigan nam cực trendy', N'Áo cardigan là một trang phục đa dụng mà bạn có thể kết hợp với nhiều loại trang phục khác nhau để tạo nên phong cách cá nhân độc đáo!', N'<h2 dir="ltr">1. Tại sao cần phải phối đồ với &aacute;o cardigan nam?</h2>

<p dir="ltr">Phối đồ với &aacute;o cardigan nam kh&ocirc;ng chỉ l&agrave; việc tạo ra một diện mạo thời trang, m&agrave; c&ograve;n l&agrave; c&aacute;ch để nam giới cảm thấy ấm &aacute;p v&agrave; thoải m&aacute;i trong m&ugrave;a lạnh. &Aacute;o cardigan nam được thiết kế đa dạng về kiểu d&aacute;ng v&agrave; m&agrave;u sắc, cho ph&eacute;p bạn tự do thể hiện phong c&aacute;ch c&aacute; nh&acirc;n. Bạn c&oacute; thể mặc n&oacute; khi đi l&agrave;m, đi chơi hoặc tham dự c&aacute;c sự kiện quan trọng m&agrave; vẫn giữ được sự lịch l&atilde;m. Việc kết hợp &aacute;o cardigan với &aacute;o thun, &aacute;o sơ mi, quần jean hoặc đầm cực kỳ đơn giản, gi&uacute;p bạn dễ d&agrave;ng thay đổi phong c&aacute;ch m&agrave; kh&ocirc;ng cần phải mất qu&aacute; nhiều c&ocirc;ng sức.</p>

<p dir="ltr">H&atilde;y th&ecirc;m một v&agrave;i phụ kiện như nơ hoặc d&acirc;y chuyền để l&agrave;m cho trang phục trở n&ecirc;n độc đ&aacute;o v&agrave; thể hiện c&aacute; t&iacute;nh ri&ecirc;ng. Với sự linh hoạt trong lựa chọn m&agrave;u sắc, &aacute;o cardigan l&agrave; sự bổ sung ho&agrave;n hảo cho tủ đồ của bạn, gi&uacute;p bạn lu&ocirc;n ấm &aacute;p, thời trang v&agrave; tự tin trong m&ugrave;a thu v&agrave; đ&ocirc;ng.</p>

<p dir="ltr"><img alt="phối đồ với áo cardigan nam" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn1.jpg?v=1697256408286" /></p>

<p dir="ltr"><em>Phối đồ với &aacute;o cardigan nam</em></p>

<h2 dir="ltr">2. TOP 10+ c&aacute;ch phối đồ với &aacute;o cardigan nam cực chất</h2>

<p dir="ltr">&Aacute;o cardigan, một trang phục kh&ocirc;ng chỉ đa dụng m&agrave; c&ograve;n c&oacute; khả năng biến h&oacute;a đa dạng, đ&atilde; trở th&agrave;nh một phần quan trọng trong thế giới thời trang nam giới. Với t&iacute;nh linh hoạt bạn c&oacute; thể tự do thể hiện phong c&aacute;ch v&agrave; tạo n&ecirc;n diện mạo độc đ&aacute;o cho bản th&acirc;n.</p>

<h3 dir="ltr">2.1 &Aacute;o cardigan phối với &aacute;o sơ mi</h3>

<p dir="ltr">Để tạo n&ecirc;n một vẻ ngoại h&igrave;nh lịch l&atilde;m v&agrave; phong độ, việc phối &aacute;o cardigan với &aacute;o sơ mi l&agrave; một lựa chọn xuất sắc. Một chiếc &aacute;o sơ mi m&agrave;u trắng hoặc đen thường được kho&aacute;c b&ecirc;n ngo&agrave;i &aacute;o cardigan để thay thế cho &aacute;o vest truyền thống. Điều n&agrave;y kh&ocirc;ng chỉ tạo n&ecirc;n sự độc đ&aacute;o m&agrave; c&ograve;n gi&uacute;p bạn thể hiện sự l&atilde;ng tử. Để l&agrave;m cho trang phục trở n&ecirc;n th&uacute; vị hơn, bạn c&oacute; thể th&ecirc;m một chiếc c&agrave; vạt c&oacute; m&agrave;u sắc kh&aacute;c để t&ocirc;n l&ecirc;n vẻ c&aacute; t&iacute;nh của bạn.</p>

<p dir="ltr"><img alt="Áo cardigan phối với áo sơ mi" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn2.jpg?v=1697256409038" /></p>

<p dir="ltr"><em>&Aacute;o cardigan phối với &aacute;o sơ mi</em></p>

<h3 dir="ltr">2.2 &Aacute;o cardigan phối với &aacute;o thun</h3>

<p dir="ltr">Đối với những người y&ecirc;u th&iacute;ch sự thoải m&aacute;i v&agrave; năng động, việc phối &aacute;o cardigan với &aacute;o thun l&agrave; một lựa chọn ho&agrave;n hảo. H&atilde;y chọn một &aacute;o thun c&oacute; m&agrave;u sắc tr&aacute;i ngược với gam m&agrave;u của &aacute;o cardigan để tạo ra sự tương phản th&uacute; vị. Một chiếc &aacute;o thun với cổ hoặc cổ tr&ograve;n khi được kết hợp với &aacute;o cardigan thường tạo n&ecirc;n sự nam t&iacute;nh v&agrave; năng động. Nếu &aacute;o cardigan của bạn c&oacute; c&aacute;c họa tiết v&agrave; m&agrave;u sắc nổi bật, h&atilde;y chọn một chiếc &aacute;o thun đơn giản để tr&aacute;nh l&agrave;m trang phục qu&aacute; nặng nề.</p>

<h3 dir="ltr">2.3 &Aacute;o cardigan phối với &aacute;o blazer/suit</h3>

<p dir="ltr">Tạo lớp &aacute;o bằng c&aacute;ch kết hợp &aacute;o cardigan với &aacute;o blazer hoặc &aacute;o vest l&agrave; một c&aacute;ch để tạo ra phong c&aacute;ch đa lớp, tạo điểm nhấn v&agrave; thể hiện sự lịch l&atilde;m. Phong c&aacute;ch n&agrave;y kết hợp sự cổ điển v&agrave; hiện đại, kh&ocirc;ng chỉ gi&uacute;p bạn tr&ocirc;ng phong c&aacute;ch m&agrave; c&ograve;n đảm bảo sự tinh tế v&agrave; phong độ.</p>

<p dir="ltr"><img alt="Áo cardigan phối với áo blazer/suit" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn3.jpg?v=1697256410197" /></p>

<p dir="ltr"><em>&Aacute;o cardigan phối với &aacute;o blazer/suit</em></p>

<h3 dir="ltr">2.4 &Aacute;o cardigan phối với &aacute;o Hoodie</h3>

<p dir="ltr">Khi bạn muốn tạo ra một diện mạo năng động v&agrave; bụi bặm, phối &aacute;o cardigan với chiếc &aacute;o Hoodie b&ecirc;n trong l&agrave; một lựa chọn tuyệt vời. Phối hợp n&agrave;y c&oacute; thể tr&ocirc;ng ph&aacute; c&aacute;ch v&agrave; sẽ th&ecirc;m mạnh mẽ nếu bạn kết hợp với chiếc quần jean ống rộng hoặc quần t&acirc;y ống rộng. Điều n&agrave;y tạo n&ecirc;n vẻ nam t&iacute;nh v&agrave; năng động.</p>

<h3 dir="ltr">2.5 &Aacute;o cardigan d&agrave;i/ngắn phối với &aacute;o ph&ocirc;ng trắng, quần kaki/jeans</h3>

<p dir="ltr">Khi bạn phối &aacute;o cardigan d&agrave;i hoặc ngắn với chiếc &aacute;o ph&ocirc;ng trắng b&ecirc;n trong v&agrave; quần kaki hoặc jeans, bạn tạo n&ecirc;n vẻ lịch l&atilde;m, h&agrave;i h&ograve;a v&agrave; nam t&iacute;nh. Đ&acirc;y l&agrave; một trang phục đơn giản nhưng lu&ocirc;n tạo ấn tượng mạnh mẽ.</p>

<p dir="ltr"><img alt="Áo cardigan dài/ngắn phối với áo phông trắng, quần kaki/jeans" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn4.jpg?v=1697256411060" /></p>

<p dir="ltr"><em>&Aacute;o cardigan d&agrave;i/ngắn phối với &aacute;o ph&ocirc;ng trắng, quần kaki/jeans</em></p>

<h3 dir="ltr">2.6 &Aacute;o cardigan phối với &aacute;o thun nam v&agrave; quần chinos/jeans</h3>

<p dir="ltr">Một kiểu phối trộn giữa &aacute;o thun nam b&ecirc;n trong, &aacute;o cardigan b&ecirc;n ngo&agrave;i, v&agrave; quần chinos hay jeans tạo n&ecirc;n vẻ phong độ v&agrave; bụi bặm. Đ&acirc;y l&agrave; sự kết hợp đơn giản m&agrave; lu&ocirc;n thể hiện sự lịch l&atilde;m v&agrave; c&aacute; t&iacute;nh của bạn. Bất kể bạn chọn m&agrave;u sắc n&agrave;o, trang phục n&agrave;y sẽ lu&ocirc;n ph&ugrave; hợp cho nhiều t&igrave;nh huống v&agrave; mang lại sự tự tin.</p>

<h3 dir="ltr">2.7 &Aacute;o cardigan d&aacute;ng d&agrave;i phối với &aacute;o thun hay &aacute;o sơ mi, kết hợp quần jeans hay kaki</h3>

<p dir="ltr">Chiếc &aacute;o cardigan d&aacute;ng d&agrave;i hoặc ngắn c&oacute; thể tạo sự đổi mới trong bộ sưu tập của bạn. Khi bạn kho&aacute;c n&oacute; b&ecirc;n ngo&agrave;i &aacute;o thun hoặc &aacute;o sơ mi v&agrave; kết hợp với quần jean, quần kaki hoặc thậm ch&iacute; quần jogger, bạn tạo ra một trang phục h&agrave;i h&ograve;a v&agrave; phong c&aacute;ch. Điều n&agrave;y l&agrave;m cho bạn trở n&ecirc;n s&agrave;nh điệu v&agrave; ph&ugrave; hợp cho nhiều t&igrave;nh huống kh&aacute;c nhau.</p>

<p dir="ltr"><img alt="Áo cardigan dáng dài phối với áo thun" src="https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn5.jpg?v=1697256412020" /></p>

<p dir="ltr"><em>&Aacute;o cardigan d&aacute;ng d&agrave;i phối với &aacute;o thun</em></p>
', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/phoi-do-voi-ao-cardigan-nam-yody-vn6.jpg?v=1697256413186', 4)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (4, N'TOP 15+ kiểu tóc xoăn bé trai đáng yêu và siêu sành điệu', N'Tóc xoăn là một trong những kiểu tóc phổ biến và phong cách cho các bé trai. Một số bé trai có sợi tóc xoăn bẩm sinh có thể thử được nhiều mẫu tóc xoăn khác nhau.', N'<h2 dir="ltr">1. Gợi &yacute; 10+ mẫu t&oacute;c xoăn b&eacute; trai cực đẹp</h2>

<p dir="ltr">Trước khi tạo mẫu t&oacute;c xoăn cho b&eacute; th&igrave; c&aacute;c bố, c&aacute;c mẹ h&atilde;y tham khảo trước c&aacute;c kiểu t&oacute;c xoăn cho b&eacute; cực đẹp ngay dưới đ&acirc;y nh&eacute;!</p>

<h2 dir="ltr"><img alt="Tóc xoăn con sâu cho bé" src="https://bizweb.dktcdn.net/100/438/408/files/toc-xoan-be-trai-1.jpg?v=1695192231369" /></h2>

<p dir="ltr"><em>T&oacute;c xoăn con s&acirc;u cho b&eacute;</em></p>

<h2 dir="ltr"><img alt="Tóc xoăn bé trai cực đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/toc-xoan-be-trai-2.jpg?v=1695192232507" /></h2>

<p dir="ltr"><em>T&oacute;c xoăn b&eacute; trai cực đẹp</em></p>

<h2 dir="ltr"><img alt="Tóc xoăn cả đầu cho bé trai" src="https://bizweb.dktcdn.net/100/438/408/files/toc-xoan-be-trai-3.jpg?v=1695192233749" /></h2>

<p dir="ltr"><em>T&oacute;c xoăn cả đầu cho b&eacute; trai</em></p>

<h2 dir="ltr"><img alt="Tóc xoăn bé trai Undercut" src="https://bizweb.dktcdn.net/100/438/408/files/toc-xoan-be-trai-4.jpg?v=1695192235066" /></h2>

<p dir="ltr"><em>T&oacute;c xoăn cho b&eacute;&nbsp;Undercut</em><br />
&nbsp;</p>

<h2 dir="ltr">2. C&aacute;ch chăm s&oacute;c t&oacute;c xoăn cho b&eacute; trai</h2>

<h3 dir="ltr">2.1 Đối với t&oacute;c xoăn bẩm sinh</h3>

<p dir="ltr">Đối với c&aacute;c b&eacute; đ&atilde; c&oacute; sẵn m&aacute;i t&oacute;c xoăn bẩm sinh th&igrave; c&aacute;c vấn đề như chăm s&oacute;c t&oacute;c kh&ocirc;ng c&oacute; g&igrave; cầu kỳ, phức tạp. B&eacute; c&oacute; thể sử dụng b&igrave;nh thường c&aacute;c sản phẩm dầu gội đầu th&ocirc;ng thường nếu như kh&ocirc;ng c&oacute; dị ứng g&igrave;.</p>

<h3 dir="ltr">2.2 Đối với t&oacute;c xoăn uốn</h3>

<p dir="ltr">Đối với c&aacute;c b&eacute; kh&ocirc;ng c&oacute; t&oacute;c xoăn bẩm sinh, tạo t&oacute;c xoăn bằng phương ph&aacute;p uốn t&oacute;c th&igrave; n&ecirc;n uốn lại định kỳ theo tư vấn của thợ t&oacute;c. Ngo&agrave;i ra cũng n&ecirc;n sử dụng th&ecirc;m một số sản phẩm dưỡng t&oacute;c như dầu xả. Để cho m&aacute;i t&oacute;c xoăn n&agrave;y c&oacute; th&ecirc;m phần bồng bềnh, tạo kiểu dễ d&agrave;ng hơn th&igrave; sử dụng th&ecirc;m c&aacute;c loại s&aacute;p hoặc g&ocirc;m vuốt t&oacute;c.</p>

<p dir="ltr">Ngo&agrave;i ra v&igrave; l&agrave; t&oacute;c xoăn n&ecirc;n hạn chế hoặc kh&ocirc;ng sử dụng lược để chải t&oacute;c.</p>

<p dir="ltr">XEM TH&Ecirc;M:&nbsp;<strong><a href="https://yody.vn/cac-kieu-toc-cho-be-trai">10+ kiểu t&oacute;c cho b&eacute; trai c&aacute;c bố mẹ n&ecirc;n tham khảo</a></strong></p>

<p dir="ltr">Tr&ecirc;n đ&acirc;y&nbsp;<strong><a href="https://yody.vn/">YODY</a></strong>&nbsp;đ&atilde; giới thiệu cho c&aacute;c bố mẹ to&agrave;n bộ mẫu t&oacute;c xoăn b&eacute; trai cực HOT hiện nay. C&ugrave;ng tham khảo v&agrave; thay đổi diện mạo mới mẻ cho b&eacute; nh&eacute;!</p>
', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/toc-xoan-be-trai-5.jpg?v=1695192236230', 8)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (5, N'Cách phối đồ cho tuổi 13 năng động, trẻ trung và đáng yêu', N'Tuổi 13 là giai đoạn quan trọng trong cuộc đời của mỗi người trẻ. Đây là thời kỳ chuyển đổi từ thiếu niên sang trưởng thành, và việc phối đồ đúng cách có thể giúp họ xác định phong cách cá nhân và tạo ấn tượng mạnh mẽ.', N'<h2 dir="ltr">1. Tuổi 13 thực sự quan trọng v&agrave; &yacute; nghĩa với c&aacute;c b&eacute;</h2>

<p dir="ltr">Tuổi 13 thường l&agrave; giai đoạn khi c&aacute;c bạn trẻ bắt đầu thể hiện sự tự do v&agrave; s&aacute;ng tạo trong c&aacute;ch ăn mặc. Họ muốn tỏa s&aacute;ng v&agrave; thể hiện bản th&acirc;n qua trang phục. Điều n&agrave;y l&agrave;m cho việc hiểu r&otilde; đặc điểm của độ tuổi n&agrave;y rất quan trọng.<br />
<br />
&nbsp;</p>

<p dir="ltr"><em>Phong c&aacute;ch phối đồ tuổi 13</em></p>

<p>&nbsp;</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/pijama-ngan-lua-satin" title="Pyjama Ngắn Lụa Satin"><img alt="Pyjama Ngắn Lụa Satin" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/hpn6004-hog-4.jpg?v=1692605995000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/pijama-ngan-lua-satin" title="">Pyjama Ngắn Lụa Satin</a></h3>

<p>449.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102026827">Hồng / S - 449.000đ</option>&nbsp;<option value="102026828">Hồng / M - 449.000đ</option>&nbsp;<option value="102026829">Hồng / L - 449.000đ</option>&nbsp;<option value="102026830">Hồng / XL - 449.000đ</option>&nbsp;<option value="102026831">Cam / S - 449.000đ</option>&nbsp;<option value="102026832">Cam / M - 449.000đ</option>&nbsp;<option value="102026833">Cam / L - 449.000đ</option>&nbsp;<option value="102026834">Cam / XL - 449.000đ</option>&nbsp;<option value="102026835">Đen / S - 449.000đ</option>&nbsp;<option value="102026836">Đen / M - 449.000đ</option>&nbsp;<option value="102026837">Đen / L - 449.000đ</option>&nbsp;<option value="102026838">Đen / XL - 449.000đ</option>&nbsp;<option value="102026839">T&iacute;m than / S - 449.000đ</option>&nbsp;<option value="102026840">T&iacute;m than / M - 449.000đ</option>&nbsp;<option value="102026841">T&iacute;m than / L - 449.000đ</option>&nbsp;<option value="102026842">T&iacute;m than / XL - 449.000đ</option>&nbsp;<option value="102026843">Đỏ đ&ocirc; / S - 449.000đ</option>&nbsp;<option value="102026844">Đỏ đ&ocirc; / M - 449.000đ</option>&nbsp;<option value="102026845">Đỏ đ&ocirc; / L - 449.000đ</option>&nbsp;<option value="102026846">Đỏ đ&ocirc; / XL - 449.000đ</option>&nbsp; </select></p>
</form>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/quan-gio-the-thao-nam-4-mua" title="Quần Gió Thể Thao Nam 4 Mùa"><img alt="Quần Gió Thể Thao Nam 4 Mùa" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/quan-gio-nam-yody-sgm6021-nav-stm6061-xlo-6-1.jpg?v=1693216231000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/quan-gio-the-thao-nam-4-mua" title="">Quần Gi&oacute; Thể Thao Nam 4 M&ugrave;a</a></h3>

<p>469.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102027176">Navy / M - 469.000đ</option>&nbsp;<option value="102027177">Navy / L - 469.000đ</option>&nbsp;<option value="102027178">Navy / XL - 469.000đ</option>&nbsp;<option value="102027179">Navy / 2XL - 469.000đ</option>&nbsp;<option value="102027180">Ghi Đậm / M - 469.000đ</option>&nbsp;<option value="102027181">Ghi Đậm / L - 469.000đ</option>&nbsp;<option value="102027182">Ghi Đậm / XL - 469.000đ</option>&nbsp;<option value="102027183">Ghi Đậm / 2XL - 469.000đ</option>&nbsp;<option value="102027184">Đen / M - 469.000đ</option>&nbsp;<option value="102027185">Đen / L - 469.000đ</option>&nbsp;<option value="102027186">Đen / XL - 469.000đ</option>&nbsp;<option value="102027187">Đen / 2XL - 469.000đ</option>&nbsp;<option value="102027188">Xanh r&ecirc;u / M - 469.000đ</option>&nbsp;<option value="102027189">Xanh r&ecirc;u / L - 469.000đ</option>&nbsp;<option value="102027190">Xanh r&ecirc;u / XL - 469.000đ</option>&nbsp;<option value="102027191">Xanh r&ecirc;u / 2XL - 469.000đ</option>&nbsp; </select></p>
</form>

<p>Đ&atilde; b&aacute;n3.1K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/tshirt-the-thao-nam-sieu-nhe-in-limitless" title="Áo Thun Thể Thao Nam Siệu Nhẹ In Limitless"><img alt="Áo Thun Thể Thao Nam Siệu Nhẹ In Limitless" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/stm6061-xre-5.jpg?v=1688723264000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/tshirt-the-thao-nam-sieu-nhe-in-limitless" title="">&Aacute;o Thun Thể Thao Nam Siệu Nhẹ In Limitless</a></h3>

<p>299.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102028045">Xanh r&ecirc;u / M - 299.000đ</option>&nbsp;<option value="102028046">Xanh r&ecirc;u / L - 299.000đ</option>&nbsp;<option value="102028047">Xanh r&ecirc;u / XL - 299.000đ</option>&nbsp;<option value="102028048">Xanh r&ecirc;u / 2XL - 299.000đ</option>&nbsp;<option value="102028049">Xanh lơ / M - 299.000đ</option>&nbsp;<option value="102028050">Xanh lơ / L - 299.000đ</option>&nbsp;<option value="102028051">Xanh lơ / XL - 299.000đ</option>&nbsp;<option value="102028052">Xanh lơ / 2XL - 299.000đ</option>&nbsp;<option value="102028053">X&aacute;m / M - 299.000đ</option>&nbsp;<option value="102028054">X&aacute;m / L - 299.000đ</option>&nbsp;<option value="102028055">X&aacute;m / XL - 299.000đ</option>&nbsp;<option value="102028056">X&aacute;m / 2XL - 299.000đ</option>&nbsp;<option value="102028057">Đen / M - 299.000đ</option>&nbsp;<option value="102028058">Đen / L - 299.000đ</option>&nbsp;<option value="102028059">Đen / XL - 299.000đ</option>&nbsp;<option value="102028060">Đen / 2XL - 299.000đ</option>&nbsp; </select></p>
</form>

<h2 dir="ltr">2. 9 c&aacute;ch phối đồ cho tuổi 13 cực đ&aacute;ng y&ecirc;u</h2>

<h3 dir="ltr">2.1 &Aacute;o Freestyle phối với quần d&agrave;i c&oacute; chất liệu jean hay denim</h3>

<p dir="ltr">Mix quần jean với &aacute;o thun l&agrave; một lựa chọn l&yacute; tưởng cho c&aacute;c b&eacute; g&aacute;i 13 tuổi. Đ&acirc;y l&agrave; c&aacute;ch phối đồ đơn giản, nhẹ nh&agrave;ng, v&agrave; ph&ugrave; hợp với lứa tuổi n&agrave;y.</p>

<p dir="ltr"><img alt="Cách phối đồ cho tuổi 13" src="https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn2.jpg?v=1693988435573" /></p>

<p dir="ltr"><em>Chất liệu jean ph&ugrave; hợp</em></p>

<h3 dir="ltr">2.2&nbsp; &Aacute;o thun phối với quần short ngắn</h3>

<p dir="ltr">Quần short l&agrave; một trang phục y&ecirc;u th&iacute;ch của nhiều người, từ người lớn đến trẻ nhỏ. Kết hợp &aacute;o thun với quần short l&agrave; một lựa chọn tốt để tạo vẻ năng động.</p>

<h3 dir="ltr">2.3 &Aacute;o freestyle phối với ch&acirc;n v&aacute;y</h3>

<p dir="ltr">Ch&acirc;n v&aacute;y ngắn lu&ocirc;n l&agrave; một lựa chọn th&uacute; vị cho c&aacute;c b&eacute; g&aacute;i. Khi phối &aacute;o thun hoặc &aacute;o croptop với ch&acirc;n v&aacute;y, họ sẽ tr&ocirc;ng xinh xắn v&agrave; trẻ trung.</p>

<p dir="ltr"><img alt="Cách phối đồ cho tuổi 13" src="https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn3-min.jpg?v=1693988497880" /></p>

<p dir="ltr"><em>Ch&acirc;n v&aacute;y ngắn</em></p>

<h3 dir="ltr">2.4 &Aacute;o thun phối với quần yếm</h3>

<p dir="ltr">Quần yếm mang đậm n&eacute;t dễ thương v&agrave; năng động. Khi phối &aacute;o thun với quần yếm, c&aacute;c b&eacute; sẽ trở n&ecirc;n dễ thương v&agrave; tinh nghịch hơn bao giờ hết.</p>

<h3 dir="ltr">2.5&nbsp; &Aacute;o freestyle phối với quần jogger</h3>

<p dir="ltr">Quần jogger c&oacute; đa dạng về kiểu d&aacute;ng v&agrave; thiết kế. Khi mix quần jogger với &aacute;o croptop, &aacute;o thun, hoặc &aacute;o thể thao, c&aacute;c b&eacute; sẽ thể hiện t&iacute;nh năng động v&agrave; phong c&aacute;ch ri&ecirc;ng.</p>

<p dir="ltr"><img alt="Cách phối đồ cho tuổi 13" src="https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn4.jpg?v=1693988517059" /></p>

<p dir="ltr"><em>Quần jogger</em></p>

<h3 dir="ltr">2.6 &Aacute;o sơ mi phối với quần jean</h3>

<p dir="ltr">Sự kết hợp giữa &aacute;o sơ mi v&agrave; quần jean lu&ocirc;n l&agrave; một lựa chọn tuyệt vời. Đ&acirc;y l&agrave; kiểu mix đồ mang sự cổ điển, thanh lịch kết hợp với t&iacute;nh năng động, trẻ trung.<br />
<br />
&nbsp;</p>

<h2 dir="ltr">3. Phong c&aacute;ch thời trang cho tuổi 13 thế n&agrave;o cho ho&agrave;n hảo?</h2>

<h3 dir="ltr">3.1 C&aacute;ch chọn trang phục</h3>

<p dir="ltr">Đối với c&aacute;c bạn trẻ 13 tuổi, trang phục n&ecirc;n thoải m&aacute;i v&agrave; phản &aacute;nh c&aacute; t&iacute;nh. Jean v&agrave; &aacute;o thun l&agrave; một sự lựa chọn th&ocirc;ng thường. H&atilde;y chắc chắn rằng trang phục vừa vặn v&agrave; kh&ocirc;ng qu&aacute; rộng hoặc chật.</p>

<h3 dir="ltr">3.2 M&agrave;u sắc v&agrave; hoa văn</h3>

<p dir="ltr">Sử dụng m&agrave;u sắc tươi s&aacute;ng v&agrave; hoa văn đơn giản để tạo điểm nhấn. H&atilde;y tr&aacute;nh sử dụng qu&aacute; nhiều hoa văn rối mắt.</p>

<p dir="ltr"><img alt="Cách phối đồ cho tuổi 13" src="https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn7.jpg?v=1693988567344" /></p>

<p dir="ltr"><em>M&agrave;u sắc tươi s&aacute;ng</em></p>

<h3 dir="ltr">3.3 Đừng qu&ecirc;n phụ kiện v&agrave; điểm nhấn</h3>

<p dir="ltr">K&iacute;nh m&aacute;t v&agrave; n&oacute;n l&agrave; những phụ kiện thời trang phổ biến cho tuổi 13. Ch&uacute;ng c&oacute; thể tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng v&agrave; bảo vệ bạn khỏi &aacute;nh nắng mặt trời.</p>

<p dir="ltr">T&uacute;i x&aacute;ch v&agrave; v&iacute; c&oacute; thể thể hiện sự s&aacute;ng tạo v&agrave; thời trang của bạn. H&atilde;y chọn những mẫu ph&ugrave; hợp với phong c&aacute;ch c&aacute; nh&acirc;n.</p>

<h3 dir="ltr">3.4 Tạo phong c&aacute;ch ri&ecirc;ng độc đ&aacute;o</h3>

<p dir="ltr">H&atilde;y lu&ocirc;n thử nghiệm v&agrave; điều chỉnh trang phục theo sở th&iacute;ch của bạn. Đừng ngại thử những kiểu trang phục mới v&agrave; kh&aacute;m ph&aacute; phong c&aacute;ch c&aacute; nh&acirc;n.</p>

<p dir="ltr">Học c&aacute;ch phối đồ đơn giản nhưng thời trang. Kết hợp quần jean với &aacute;o thun hoặc v&aacute;y đơn giản với gi&agrave;y thể thao l&agrave; một c&aacute;ch tốt để bắt đầu.</p>

<p dir="ltr"><img alt="Cách phối đồ cho tuổi 13" src="https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn8.jpg?v=1693988587279" /></p>

<p dir="ltr"><em>Phong c&aacute;ch ấn tượng</em></p>

<p dir="ltr">Hy vọng, với b&agrave;i viết về c&aacute;ch phối đồ cho tuổi 13 m&agrave;&nbsp;<a href="https://yody.vn/"><strong>YODY</strong></a>&nbsp;vừa gửi đến, c&aacute;c bạn cũng đ&atilde; c&oacute; th&ecirc;m cho m&igrave;nh nhiều sự lựa chọn ph&ugrave; hợp.</p>
', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/cach-phoi-do-cho-tuoi-13-yody-vn1.jpg?v=1693988417889', 2)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (6, N'Top 10+ khu vui chơi Đà Lạt mới toanh KHÔNG ĐI TIẾC HÙI HỤI', N'Đà Lạt - Thiên đường hoa và mây mù, đã lâu nay được biết đến là một trong những điểm đến tuyệt vời tại Việt Nam. Với khí hậu mát mẻ, khung cảnh thiên nhiên hùng vĩ, và những khu vui chơi độc đáo.', N'<p dir="ltr"><strong>TOP 10 địa điểm khu vui chơi Đ&agrave; Lạt nhất định</strong><strong>&nbsp;phải đi</strong></p>

<h2 dir="ltr">1. Datanla High Rope Course Đ&agrave; Lạt</h2>

<p dir="ltr">Datanla High Rope Course l&agrave; một điểm đến m&agrave; c&aacute;c bạn trẻ đổ về để th&aacute;ch thức bản th&acirc;n. Khu vui chơi Đ&agrave; Lạt&nbsp;n&agrave;y nằm c&aacute;ch trung t&acirc;m Đ&agrave; Lạt khoảng 5km, mang đến những trải nghiệm th&uacute; vị v&agrave; mạo hiểm cho những người y&ecirc;u th&iacute;ch cảm gi&aacute;c hồi hộp.</p>

<p dir="ltr"><em><img alt="Khu vui chơi Đà Lạt cảm giác mạnh" src="https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn1.jpg?v=1692072734696" /></em></p>

<p dir="ltr"><em>Khu vui chơi Đ&agrave; Lạt cảm gi&aacute;c mạnh</em></p>

<h2 dir="ltr">2. Quảng Trường L&acirc;m Vi&ecirc;n tp Đ&agrave; Lạt</h2>

<p dir="ltr">Quảng Trường L&acirc;m Vi&ecirc;n l&agrave; một thi&ecirc;n đ&agrave;ng giải tr&iacute; cho giới trẻ. Với vị tr&iacute; tuyệt đẹp, kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng v&agrave; c&aacute;c hoạt động đa dạng như t&agrave;u lượn si&ecirc;u tốc v&agrave; v&ograve;ng quay, khu vui chơi Đ&agrave; Lạt n&agrave;y&nbsp;l&agrave; nơi tạo ra những khoảnh khắc đ&aacute;ng nhớ.</p>

<h2 dir="ltr">3. Cung văn h&oacute;a thiếu nhi&nbsp;Đ&agrave; Lạt</h2>

<p dir="ltr">Cung Văn H&oacute;a Thiếu Nhi Đ&agrave; Lạt l&agrave; nơi th&uacute; vị cho c&aacute;c gia đ&igrave;nh c&oacute; trẻ nhỏ. Với hoạt động gi&aacute;o dục, tr&ograve; chơi s&aacute;ng tạo v&agrave; c&aacute;c sự kiện biểu diễn, đ&acirc;y l&agrave; nơi th&uacute;c đẩy sự ph&aacute;t triển to&agrave;n diện cho trẻ.</p>

<p dir="ltr"><em><img alt="Khu vui chơi cho trẻ em ở Đà Lạt" src="https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn2.jpg?v=1692072736124" /></em></p>

<p dir="ltr"><em>Khu vui chơi cho trẻ em ở Đ&agrave; Lạt</em></p>

<h2 dir="ltr">4. L&agrave;ng C&ugrave; Lần độc đ&aacute;o</h2>

<p dir="ltr">L&agrave;ng C&ugrave; Lần cũng l&agrave; một trong những&nbsp;<u><strong>khu vui chơi Đ&agrave; Lạt</strong></u>&nbsp;kết hợp giữa sinh th&aacute;i v&agrave; văn h&oacute;a độc đ&aacute;o. Tại đ&acirc;y, bạn c&oacute; thể tham gia c&aacute;c hoạt động như ch&egrave;o thuyền, cưỡi voi v&agrave; thậm ch&iacute; tham gia v&agrave;o c&aacute;c buổi giao lưu Cồng Chi&ecirc;ng.</p>

<h2 dir="ltr">5. Chợ đ&ecirc;m Đ&agrave; Lạt</h2>

<p dir="ltr"><strong><u>Chợ Đ&ecirc;m Đ&agrave; Lạt</u></strong>, c&ograve;n được gọi l&agrave; chợ &Acirc;m Phủ, l&agrave; nơi tuyệt vời để thư gi&atilde;n v&agrave; mua sắm. Với nhiều mặt h&agrave;ng độc đ&aacute;o v&agrave; gi&aacute; cả hợp l&yacute;, đ&acirc;y l&agrave; nơi bạn c&oacute; thể mua qu&agrave; lưu niệm cho người th&acirc;n.</p>

<p dir="ltr"><em><img alt="Địa điểm du lịch Đà Lạt gần trung tâm" src="https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn3.jpg?v=1692072770783" /></em></p>

<p dir="ltr"><em>Địa điểm du lịch Đ&agrave; Lạt gần trung t&acirc;m</em></p>

<h2 dir="ltr">6. Th&aacute;c Prenn ho&agrave; m&igrave;nh với thi&ecirc;n nhi&ecirc;n&nbsp;Đ&agrave; Lạt</h2>

<p dir="ltr">Th&aacute;c Prenn l&agrave; một trong những điểm khu vui chơi Đ&agrave; Lạt tự nhi&ecirc;n tuyệt vời. Với th&aacute;c nước v&agrave; cảnh quan xanh m&aacute;t, đ&acirc;y l&agrave; nơi tốt để thư gi&atilde;n v&agrave; kết nối với thi&ecirc;n nhi&ecirc;n.</p>

<h2 dir="ltr">7. C&aacute;p treo Đ&agrave; Lạt&nbsp;</h2>

<p dir="ltr">C&aacute;p Treo Đ&agrave; Lạt đưa bạn l&ecirc;n đỉnh n&uacute;i Langbiang, mang đến tầm nh&igrave;n to&agrave;n cảnh v&ugrave;ng Đ&agrave; Lạt từ tr&ecirc;n cao. Đ&acirc;y l&agrave; trải nghiệm tuyệt vời cho những người y&ecirc;u th&iacute;ch cảm gi&aacute;c mạo hiểm khi đi du lịch Đ&agrave; Lạt.</p>

<p dir="ltr"><em><img alt="Địa điểm du lịch vui chơi Đà Lạt" src="https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn4.jpg?v=1692072772223" /></em></p>

<p dir="ltr"><em>Địa điểm du lịch vui chơi Đ&agrave; Lạt</em></p>

<h2 dir="ltr">8. Thung lũng t&igrave;nh y&ecirc;u&nbsp;Đ&agrave; Lạt</h2>

<p dir="ltr">Thung Lũng T&igrave;nh Y&ecirc;u với hồ Đa Th&agrave;nh l&agrave; nơi l&yacute; tưởng để thể hiện t&igrave;nh cảm. Với kh&iacute; hậu m&aacute;t mẻ v&agrave; kh&ocirc;ng gian xanh mướt, khu vui chơi Đ&agrave; Lạt n&agrave;y&nbsp;l&agrave; điểm đến l&yacute; tưởng cho c&aacute;c cặp đ&ocirc;i.</p>

<h2 dir="ltr">9. Tiệm b&aacute;nh Cối xay gi&oacute;</h2>

<p dir="ltr">Tiệm B&aacute;nh Cối Xay Gi&oacute; kh&ocirc;ng chỉ l&agrave; nơi chụp ảnh ho&agrave;i cổ m&agrave; c&ograve;n mang đến hương vị thơm ngon của c&aacute;c loại b&aacute;nh truyền thống. Bạn c&oacute; thể mua những b&aacute;nh độc đ&aacute;o l&agrave;m qu&agrave; cho người th&acirc;n.</p>

<p dir="ltr"><em><img alt="Những địa điểm đang hot ở Đà Lạt" src="https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn5.jpg?v=1692072802917" /></em></p>

<p dir="ltr"><em>Tiệm B&aacute;nh Cối Xay Gi&oacute; -&nbsp;Những địa điểm đang hot ở Đ&agrave; Lạt</em><br />
<br />
&nbsp;</p>

<ul>
	<li dir="ltr">
	<p dir="ltr">Giữ G&igrave;n Sức Khỏe: Đ&agrave; Lạt nằm ở độ cao kh&aacute; cao, n&ecirc;n h&atilde;y ch&uacute; &yacute; đến sức khỏe của m&igrave;nh v&agrave; uống nhiều nước khi tham gia c&aacute;c hoạt động ngo&agrave;i trời.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Đặt V&eacute; Trước (Nếu C&oacute;): Để tr&aacute;nh t&igrave;nh trạng chờ đợi qu&aacute; l&acirc;u, bạn c&oacute; thể đặt v&eacute; trước cho c&aacute;c hoạt động hoặc điểm tham quan phổ biến.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Dịch Vụ Đi Lại: Khi cần đi lại giữa c&aacute;c điểm tham quan, h&atilde;y t&igrave;m hiểu về c&aacute;c dịch vụ vận chuyển như taxi, grab hoặc xe thu&ecirc; để di chuyển thuận tiện.</p>
	</li>
	<li dir="ltr">
	<p dir="ltr">Chụp Ảnh Kỷ Niệm: Đừng qu&ecirc;n mang theo m&aacute;y ảnh hoặc điện thoại để lưu giữ những khoảnh khắc đẹp v&agrave; kỷ niệm tại Đ&agrave; Lạt.</p>
	</li>
</ul>

<p dir="ltr">Nhớ tu&acirc;n thủ c&aacute;c lưu &yacute; tr&ecirc;n để c&oacute; một h&agrave;nh tr&igrave;nh th&uacute; vị v&agrave; an to&agrave;n khi vui chơi tại Đ&agrave; Lạt!</p>

<p dir="ltr">Hy vọng, với b&agrave;i viết về&nbsp;<strong>khu vui chơi Đ&agrave; Lạt</strong>&nbsp;m&agrave;&nbsp;<a href="https://yody.vn/"><strong>YODY</strong></a>&nbsp;vừa gửi đến, c&aacute;c bạn cũng đ&atilde; c&oacute; th&ecirc;m nhiều th&ocirc;ng tin hữu &iacute;ch d&agrave;nh cho m&igrave;nh.</p>
', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/khu-vui-choi-da-lat-yody-vn4.jpg?v=1692072772223', 7)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (7, N'1000+ mẫu áo đồng phục đi biển sành điệu NỔI BẦN BẬT hè này', N'Các mẫu áo đồng phục đi biển không chỉ đem lại sự đồng điệu, thống nhất cho các thành viên trong gia đình, đội nhóm hoặc đoàn thể, mà còn thể hiện phong cách.', N'<h2 dir="ltr">1. Trọn BST&nbsp;&aacute;o polo gia đ&igrave;nh cực trendy b&aacute;n chạy nhất 2023</h2>

<p dir="ltr">C&ugrave;ng với sự thay đổi của c&aacute;c xu hướng thời trang,&nbsp;<em>&aacute;o polo gia đ&igrave;nh</em>&nbsp;ở H&agrave; Nội cũng trở n&ecirc;n phong ph&uacute; hơn với nhiều mẫu m&atilde;, kiểu d&aacute;ng v&agrave; m&agrave;u sắc kh&aacute;c nhau.</p>

<p dir="ltr">Mang th&ocirc;ng điệp về sự gắn kết gia đ&igrave;nh,&nbsp;<a href="https://yody.vn/ao-polo-nam"><strong>&aacute;o polo YODY</strong></a>&nbsp;l&agrave; mẫu &aacute;o được lựa chọn nhiều để l&agrave;m đồng phục gia đ&igrave;nh tại H&agrave; Nội.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n5.0K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-polo-nam-pique-mat-chim-phoi-tay-co-ke" title="Áo Polo Nam Pique Mắt Chim Phối Tay Cổ Kẻ"><img alt="Áo Polo Nam Pique Mắt Chim Phối Tay Cổ Kẻ" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/ao-polo-nam-apm5039-tr1-6-yodyvn.jpg?v=1690163781000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-polo-nam-pique-mat-chim-phoi-tay-co-ke" title="">&Aacute;o Polo Nam Pique Mắt Chim Phối Tay Cổ Kẻ</a></h3>

<p>299.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="101997810">Trắng 1 / M - 299.000đ</option>&nbsp;<option value="101997811">Trắng 1 / L - 299.000đ</option>&nbsp;<option value="101997812">Trắng 1 / XL - 299.000đ</option>&nbsp;<option value="101997813">Trắng 1 / 2XL - 299.000đ</option>&nbsp;<option value="101997814">Trắng 1 / 3XL - 299.000đ</option>&nbsp;<option value="101997815">Trắng 1 / 4XL - 299.000đ</option>&nbsp;<option value="101997816">T&iacute;m than / M - 299.000đ</option>&nbsp;<option value="101997817">T&iacute;m than / L - 299.000đ</option>&nbsp;<option value="101997818">T&iacute;m than / XL - 299.000đ</option>&nbsp;<option value="101997819">T&iacute;m than / 2XL - 299.000đ</option>&nbsp;<option value="101997820">T&iacute;m than / 3XL - 299.000đ</option>&nbsp;<option value="101997821">T&iacute;m than / 4XL - 299.000đ</option>&nbsp;<option value="101997822">Trắng / M - 299.000đ</option>&nbsp;<option value="101997823">Trắng / L - 299.000đ</option>&nbsp;<option value="101997824">Trắng / XL - 299.000đ</option>&nbsp;<option value="101997825">Trắng / 2XL - 299.000đ</option>&nbsp;<option value="101997826">Trắng / 3XL - 299.000đ</option>&nbsp;<option value="101997827">Trắng / 4XL - 299.000đ</option>&nbsp;<option value="101997828">Đen / M - 299.000đ</option>&nbsp;<option value="101997829">Đen / L - 299.000đ</option>&nbsp;<option value="101997830">Đen / XL - 299.000đ</option>&nbsp;<option value="101997831">Đen / 2XL - 299.000đ</option>&nbsp;<option value="101997832">Đen / 3XL - 299.000đ</option>&nbsp;<option value="101997833">Đen / 4XL - 299.000đ</option>&nbsp;<option value="101997834">Xanh / M - 299.000đ</option>&nbsp;<option value="101997835">Xanh / L - 299.000đ</option>&nbsp;<option value="101997836">Xanh / XL - 299.000đ</option>&nbsp;<option value="101997837">Xanh / 2XL - 299.000đ</option>&nbsp;<option value="101997838">Xanh / 3XL - 299.000đ</option>&nbsp;<option value="101997839">Xanh / 4XL - 299.000đ</option>&nbsp;<option value="101997840">N&acirc;u / M - 299.000đ</option>&nbsp;<option value="101997841">N&acirc;u / L - 299.000đ</option>&nbsp;<option value="101997842">N&acirc;u / XL - 299.000đ</option>&nbsp;<option value="101997843">N&acirc;u / 2XL - 299.000đ</option>&nbsp;<option value="101997844">N&acirc;u / 3XL - 299.000đ</option>&nbsp;<option value="101997845">N&acirc;u / 4XL - 299.000đ</option>&nbsp;<option value="101997846">Ghi / M - 299.000đ</option>&nbsp;<option value="101997847">Ghi / L - 299.000đ</option>&nbsp;<option value="101997848">Ghi / XL - 299.000đ</option>&nbsp;<option value="101997849">Ghi / 2XL - 299.000đ</option>&nbsp;<option value="101997850">Ghi / 3XL - 299.000đ</option>&nbsp;<option value="101997851">Ghi / 4XL - 299.000đ</option>&nbsp; </select></p>
</form>

<p>Đ&atilde; b&aacute;n14.1K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-polo-nu-modal-phoi-ke" title="Áo Polo Nữ Modal Phối Kẻ"><img alt="Áo Polo Nữ Modal Phối Kẻ" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/apn5394-xbi04.jpg?v=1690163757000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-polo-nu-modal-phoi-ke" title="">&Aacute;o Polo Nữ Modal Phối Kẻ</a></h3>

<p>329.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102017523">Xanh Biển / S - 329.000đ</option>&nbsp;<option value="102017524">Xanh Biển / M - 329.000đ</option>&nbsp;<option value="102017525">Xanh Biển / L - 329.000đ</option>&nbsp;<option value="102017526">Xanh Biển / XL - 329.000đ</option>&nbsp;<option value="102017527">Đỏ / S - 329.000đ</option>&nbsp;<option value="102017528">Đỏ / M - 329.000đ</option>&nbsp;<option value="102017529">Đỏ / L - 329.000đ</option>&nbsp;<option value="102017530">Đỏ / XL - 329.000đ</option>&nbsp;<option value="102017531">Xanh L&aacute; / S - 329.000đ</option>&nbsp;<option value="102017532">Xanh L&aacute; / M - 329.000đ</option>&nbsp;<option value="102017533">Xanh L&aacute; / L - 329.000đ</option>&nbsp;<option value="102017534">Xanh L&aacute; / XL - 329.000đ</option>&nbsp;<option value="102017535">Navy / S - 329.000đ</option>&nbsp;<option value="102017536">Navy / M - 329.000đ</option>&nbsp;<option value="102017537">Navy / L - 329.000đ</option>&nbsp;<option value="102017538">Navy / XL - 329.000đ</option>&nbsp;<option value="102017539">N&acirc;u / S - 329.000đ</option>&nbsp;<option value="102017540">N&acirc;u / M - 329.000đ</option>&nbsp;<option value="102017541">N&acirc;u / L - 329.000đ</option>&nbsp;<option value="102017542">N&acirc;u / XL - 329.000đ</option>&nbsp; </select></p>
</form>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/icon_start.svg?1699432563900" style="height:10px; width:10px" />5</p>

<p>Đ&atilde; b&aacute;n29.0K</p>

<form action="https://yody.vn/cart/add" enctype="multipart/form-data" method="post">
<p><a href="https://yody.vn/ao-polo-tre-em-cafe-theu-cho" title="Áo Polo Trẻ Em Cafe Thêu Ngực"><img alt="Áo Polo Trẻ Em Cafe Thêu Ngực" src="https://bizweb.dktcdn.net/thumb/large/100/438/408/products/apk5113-nau-5.jpg?v=1688723421000" /></a><img src="https://bizweb.dktcdn.net/100/438/408/themes/919724/assets/140x140-1.png?1699432563900" /></p>

<h3><a href="https://yody.vn/ao-polo-tre-em-cafe-theu-cho" title="">&Aacute;o Polo Trẻ Em Cafe Th&ecirc;u Ngực</a></h3>

<p>229.000đ</p>

<p><select name="variantId">&nbsp;<option selected="selected" value="102017050">N&acirc;u / 2 - 229.000đ</option>&nbsp;<option value="102017051">N&acirc;u / 4 - 229.000đ</option>&nbsp;<option value="102017052">N&acirc;u / 6 - 229.000đ</option>&nbsp;<option value="102017053">N&acirc;u / 8 - 229.000đ</option>&nbsp;<option value="102017054">N&acirc;u / 10 - 229.000đ</option>&nbsp;<option value="102017055">Navy / 2 - 229.000đ</option>&nbsp;<option value="102017056">Navy / 4 - 229.000đ</option>&nbsp;<option value="102017057">Navy / 6 - 229.000đ</option>&nbsp;<option value="102017058">Navy / 8 - 229.000đ</option>&nbsp;<option value="102017059">Navy / 10 - 229.000đ</option>&nbsp;<option value="102017060">Xanh mint / 2 - 229.000đ</option>&nbsp;<option value="102017061">Xanh mint / 4 - 229.000đ</option>&nbsp;<option value="102017062">Xanh mint / 6 - 229.000đ</option>&nbsp;<option value="102017063">Xanh mint / 8 - 229.000đ</option>&nbsp;<option value="102017064">Xanh mint / 10 - 229.000đ</option>&nbsp;<option value="102017065">V&agrave;ng / 2 - 229.000đ</option>&nbsp;<option value="102017066">V&agrave;ng / 4 - 229.000đ</option>&nbsp;<option value="102017067">V&agrave;ng / 6 - 229.000đ</option>&nbsp;<option value="102017068">V&agrave;ng / 8 - 229.000đ</option>&nbsp;<option value="102017069">V&agrave;ng / 10 - 229.000đ</option>&nbsp;<option value="102017070">Xanh lơ / 2 - 229.000đ</option>&nbsp;<option value="102017071">Xanh lơ / 4 - 229.000đ</option>&nbsp;<option value="102017072">Xanh lơ / 6 - 229.000đ</option>&nbsp;<option value="102017073">Xanh lơ / 8 - 229.000đ</option>&nbsp;<option value="102017074">Xanh lơ / 10 - 229.000đ</option>&nbsp;<option value="102017075">Đỏ / 2 - 229.000đ</option>&nbsp;<option value="102017076">Đỏ / 4 - 229.000đ</option>&nbsp;<option value="102017077">Đỏ / 6 - 229.000đ</option>&nbsp;<option value="102017078">Đỏ / 8 - 229.000đ</option>&nbsp;<option value="102017079">Đỏ / 10 - 229.000đ</option>&nbsp; </select></p>
</form>

<h3 dir="ltr">1.1&nbsp;Mẫu &aacute;o polo gia đ&igrave;nh m&agrave;u trắng tươi s&aacute;ng</h3>

<p dir="ltr">&Aacute;o polo gia đ&igrave;nh kh&ocirc;ng chỉ l&agrave; trang phục thời trang m&agrave; c&ograve;n thể hiện sự ấm c&uacute;ng v&agrave; gắn kết trong gia đ&igrave;nh. Với thiết kế độc đ&aacute;o v&agrave; dễ d&agrave;ng phối hợp, &aacute;o polo đồng phục gia đ&igrave;nh đ&atilde; trở th&agrave;nh một phần kh&ocirc;ng thể thiếu trong tủ đồ của nhiều người. Nhất l&agrave; khi sử dụng tone m&agrave;u trawnsgh tươi s&aacute;ng.</p>

<p dir="ltr">D&ugrave; ở bất cử ho&agrave;n cảnh n&agrave;o th&igrave; items n&agrave;y cũng cực kỳ ph&ugrave; hợp bởi sự t&ocirc;n da v&agrave; kh&ocirc;ng k&eacute;n người mặc.</p>

<p dir="ltr"><img alt="Mẫu áo polo gia đình" src="https://bizweb.dktcdn.net/100/438/408/files/ao-polo-gia-dinh-yody-9-jpeg.jpg?v=1693292416821" /></p>

<p dir="ltr"><em>Mẫu &aacute;o polo gia đ&igrave;nh m&agrave;u trắng tươi s&aacute;ng</em></p>

<h3 dir="ltr">1.2 &Aacute;o polo gia đ&igrave;nh m&agrave;u v&agrave;ng năng động</h3>

<p dir="ltr">Nếu m&agrave;u trắng l&agrave; game m&agrave;u nh&atilde; nhặn, tinh tế lịch sự th&igrave; gam m&agrave;u v&agrave;ng lại mang đến cho ch&uacute;ng ta nguồn năng lượng t&iacute;ch cực. Chỉ cần nh&igrave;n v&agrave;o th&ocirc;i đ&atilde; thấy sức trẻ sức khỏe của gia đ&igrave;nh bạn.</p>

<p dir="ltr"><img alt="kiểu áo polo gia đình đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/ao-polo-gia-dinh-yody-5-jpeg.jpg?v=1693292420807" /></p>

<p dir="ltr"><em>&Aacute;o polo gia đ&igrave;nh m&agrave;u v&agrave;ng năng động</em></p>

<h3 dir="ltr">1.3 Mẫu &aacute;o thun c&oacute; cổ&nbsp;gia đ&igrave;nh m&agrave;u t&iacute;m s&aacute;ng tạo</h3>

<p dir="ltr">Bạn đ&atilde; qu&aacute; nh&agrave;m ch&aacute;n với những tone m&agrave;u &quot;đời thường&quot; vậy h&atilde;y thử ngay m&agrave;u t&iacute;m xem sao. Đ&acirc;y l&agrave; một gam m&agrave;u cực t&ocirc;n da, tuy nhi&ecirc;n, nếu bạn c&oacute; l&agrave;n da hơi ngăm đen một ch&uacute;t th&igrave; YODY khuy&ecirc;n bạn kh&ocirc;ng n&ecirc;n mạo hiểm thử gam m&agrave;u n&agrave;y.</p>

<p dir="ltr"><img alt="áo polo gia đình đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/ao-polo-gia-dinh-yody-1-jpeg.jpg?v=1693292427741" /></p>

<p dir="ltr"><em>Mẫu &aacute;o thun c&oacute; cổ&nbsp;gia đ&igrave;nh m&agrave;u t&iacute;m s&aacute;ng tạo</em></p>

<h3 dir="ltr">1.4 &Aacute;o ph&ocirc;ng c&oacute; cổ cho gia đ&igrave;nh m&agrave;u xanh dương</h3>

<p dir="ltr">Khi cả gia đ&igrave;nh mặc c&ugrave;ng một kiểu &aacute;o polo, điều đ&oacute; thể hiện một tinh thần đo&agrave;n kết v&agrave; ấm &aacute;p. Nh&igrave;n v&agrave;o bức tranh tổng thể, ch&uacute;ng ta c&oacute; thể thấy sự đo&agrave;n kết m&agrave; &aacute;o polo gia đ&igrave;nh mang lại - một đại diện cho sự đo&agrave;n tụ v&agrave; t&igrave;nh y&ecirc;u thương giữa c&aacute;c th&agrave;nh vi&ecirc;n gia đ&igrave;nh. H&atilde;y cảm nhận &aacute;o đ&ocirc;ng phục gia đ&igrave;nh gam m&agrave;u xanh m&aacute;t mẻ n&agrave;y nh&eacute;!</p>

<p dir="ltr"><img alt="áo polo gia đình đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/ao-polo-gia-dinh-yody-3-jpeg.jpg?v=1693292418287" /></p>

<p dir="ltr"><em>&Aacute;o ph&ocirc;ng c&oacute; cổ cho gia đ&igrave;nh m&agrave;u xanh dương</em><br />
&nbsp;</p>

<p dir="ltr"><em>Địa chỉ uy t&iacute;n cho lựa chọn mua &aacute;o đồng phục gia đ&igrave;nh tại H&agrave; Nội</em></p>

<p dir="ltr">Để mua&nbsp;<strong>&aacute;o polo gia đ&igrave;nh</strong>&nbsp;ch&iacute;nh h&atilde;ng YODY, bạn c&oacute; thể đặt h&agrave;ng qua website:&nbsp;<a href="https://yody.vn/"><strong>Yody.vn</strong></a>&nbsp;hoặc nếu bạn muốn đặt cho cả đại gia đ&igrave;nh của m&igrave;nh với số lượng &aacute;o lớn c&oacute; thể li&ecirc;n hệ dịch vụ in &aacute;o đồng phục của YODY nha. Hotline tư vấn trực tiếp:&nbsp;<strong>024 999 86 999</strong></p>
', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/dong-phuc-di-bien-yody-1.jpg?v=1683775603101', 7)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (8, N'Blog 7', N'Short content 7', N'Content 7', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://picsum.photos/200', 15)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (9, N'Blog 8', N'Short content 8', N'Content 8', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://picsum.photos/200', 14)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (10, N'Blog 9', N'Short content 9', N'Content 9', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://picsum.photos/200', 6)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (11, N'Blog 10', N'Short content 10', N'Content 10', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://picsum.photos/200', 14)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (12, N'Blog 11', N'Short content 11', N'Content 11', CAST(N'2023-10-16T16:50:03.203' AS DateTime), N'https://picsum.photos/200', 12)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (13, N'TOP 20 kiểu tóc mái Nhật “NỊNH MẶT” nhất 2023', N'Tóc Mái Nhật, hoặc Japanese bangs, đang tạo sóng trong thế giới thời trang và làm đẹp. Kiểu tóc độc đáo này vừa thời trang vừa đa dạng.', N'<h2 dir="ltr">1. T&oacute;c m&aacute;i Nhật l&agrave; g&igrave;?</h2>

<p dir="ltr">T&oacute;c m&aacute;i Nhật l&agrave; một kiểu t&oacute;c ngắn, thường được cắt thẳng ngang tr&ecirc;n tr&aacute;n, tạo n&ecirc;n sự cắt đứt r&otilde; rệt với t&oacute;c d&agrave;i ph&iacute;a sau. Kiểu t&oacute;c n&agrave;y c&oacute; nguồn gốc từ Nhật Bản v&agrave; đ&atilde; trở th&agrave;nh một phần quan trọng của văn h&oacute;a thời trang to&agrave;n cầu.&nbsp;</p>

<p dir="ltr"><img alt="Tóc mái Nhật" src="https://bizweb.dktcdn.net/100/438/408/files/toc-mai-nhat-yody-vn1.jpg?v=1697254749199" /></p>

<p dir="ltr"><em>T&oacute;c m&aacute;i Nhật</em></p>

<p dir="ltr">C&oacute; nhiều biến thể, từ m&aacute;i thẳng đơn giản đến m&aacute;i c&oacute; độ d&agrave;y v&agrave; kiểu cắt tỉa, hoặc m&aacute;i nghi&ecirc;ng sang một b&ecirc;n. N&oacute; thường tạo n&ecirc;n diện mạo hiện đại, ph&ugrave; hợp với nhiều d&aacute;ng mặt v&agrave; phong c&aacute;ch thời trang kh&aacute;c nhau. T&oacute;c m&aacute;i Nhật đ&atilde; trở th&agrave;nh một trong những kiểu t&oacute;c phổ biến tại Việt Nam v&agrave; được ưa chuộng bởi nhiều người y&ecirc;u thời trang.</p>

<h2 dir="ltr">2. C&aacute;ch ph&acirc;n biệt c&aacute;c loại t&oacute;c m&aacute;i</h2>

<p dir="ltr">T&oacute;c m&aacute;i c&oacute; thể biến đổi ho&agrave;n to&agrave;n vẻ ngoại h&igrave;nh của bạn, v&agrave; thay đổi kiểu m&aacute;i l&agrave; một c&aacute;ch th&uacute; vị để n&acirc;ng cấp vẻ đẹp c&aacute; nh&acirc;n. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; bốn kiểu t&oacute;c m&aacute;i phổ biến dưới đ&acirc;y:</p>

<h3 dir="ltr">2.1 T&oacute;c m&aacute;i bằng</h3>

<p dir="ltr">Kiểu t&oacute;c m&aacute;i bằng l&agrave; một sự lựa chọn tuyệt vời, đặc biệt đối với những ai muốn tạo sự trẻ trung cho diện mạo. Với chiều d&agrave;i v&agrave; độ d&agrave;y t&ugrave;y chỉnh, kiểu m&aacute;i n&agrave;y c&oacute; thể ph&ugrave; hợp với nhiều khu&ocirc;n mặt kh&aacute;c nhau. Hơn nữa, m&aacute;i bằng cũng gi&uacute;p bạn che đi c&aacute;c khuyết điểm tr&ecirc;n tr&aacute;n một c&aacute;ch t&agrave;i t&igrave;nh.</p>

<p dir="ltr"><img alt="Tóc mái bằng" src="https://bizweb.dktcdn.net/100/438/408/files/toc-mai-nhat-yody-vn2.jpg?v=1697254749960" /></p>

<p dir="ltr"><em>T&oacute;c m&aacute;i bằng</em></p>

<h3 dir="ltr">2.2 T&oacute;c m&aacute;i thưa</h3>

<p dir="ltr">L&agrave; phi&ecirc;n bản n&acirc;ng cấp của m&aacute;i bằng, t&oacute;c m&aacute;i thưa được coi l&agrave; kiểu m&aacute;i dịu d&agrave;ng v&agrave; nữ t&iacute;nh nhất. Độ d&agrave;i tương tự với m&aacute;i bằng, tuy nhi&ecirc;n, chỉ một phần t&oacute;c ph&iacute;a trước tr&aacute;n được để thưa đi, để lộ phần lớn tr&aacute;n. Điều n&agrave;y tạo n&ecirc;n sự quyến rũ v&agrave; dịu d&agrave;ng, nhưng đồng thời, m&aacute;i thưa kh&ocirc;ng c&oacute; khả năng che đi c&aacute;c khuyết điểm tr&ecirc;n tr&aacute;n như m&aacute;i bằng.</p>

<h3 dir="ltr">2.3 T&oacute;c m&aacute;i d&agrave;i</h3>

<p dir="ltr">T&oacute;c m&aacute;i d&agrave;i đang trở th&agrave;nh xu hướng được nhiều phụ nữ ưa chuộng gần đ&acirc;y. Kiểu m&aacute;i n&agrave;y &ocirc;m theo đường khu&ocirc;n mặt, l&agrave;m cho khu&ocirc;n mặt trở n&ecirc;n thon gọn hơn v&agrave; tạo sự nữ t&iacute;nh, dịu d&agrave;ng, đặc biệt khi kết hợp với kiểu t&oacute;c uốn xoăn nhẹ nh&agrave;ng.</p>

<p dir="ltr"><img alt="Tóc mái dài" src="https://bizweb.dktcdn.net/100/438/408/files/toc-mai-nhat-yody-vn3.jpg?v=1697254750831" /></p>

<p dir="ltr"><em>T&oacute;c m&aacute;i d&agrave;i</em></p>

<h3 dir="ltr">2.4 T&oacute;c m&aacute;i ngố</h3>

<p dir="ltr">Nếu bạn muốn thử nghiệm một kiểu t&oacute;c độc đ&aacute;o, h&atilde;y thử t&oacute;c m&aacute;i ngố. Thường được cắt ngắn, thậm ch&iacute; ngắn hơn so với c&aacute;c loại t&oacute;c m&aacute;i kh&aacute;c, t&oacute;c m&aacute;i ngố mang đến sự c&aacute; t&iacute;nh v&agrave; độc đ&aacute;o. Nếu bạn sợ rằng kiểu n&agrave;y kh&ocirc;ng hợp, h&atilde;y bắt đầu bằng c&aacute;ch cắt đến 1/4 hoặc 1/2 phần tr&aacute;n, v&agrave; nhớ rằng kh&ocirc;ng n&ecirc;n cắt qu&aacute; s&aacute;t ch&acirc;n m&agrave;y.</p>

<h3 dir="ltr">2.5 T&oacute;c m&aacute;i ch&eacute;o</h3>

<p dir="ltr">T&oacute;c m&aacute;i ch&eacute;o l&agrave; một kiểu t&oacute;c m&aacute;i kh&aacute;c kh&ocirc;ng n&ecirc;n bỏ qua. Với độ d&agrave;i vừa phải, d&agrave;i hơn một ch&uacute;t so với ch&acirc;n m&agrave;y, m&aacute;i t&oacute;c được cắt để nghi&ecirc;ng theo tỉ lệ 7:3, tạo n&ecirc;n kiểu m&aacute;i nằm ho&agrave;n to&agrave;n ở một b&ecirc;n. Kiểu n&agrave;y c&ograve;n l&agrave;m nổi bật t&oacute;c m&aacute;i khi bạn uốn t&oacute;c.</p>

<p dir="ltr"><img alt="Tóc mái chéo" src="https://bizweb.dktcdn.net/100/438/408/files/toc-mai-nhat-yody-vn4.jpg?v=1697254751791" /></p>

<p dir="ltr"><em>T&oacute;c m&aacute;i ch&eacute;o</em></p>

<h2 dir="ltr">3. TOP 20 kiểu t&oacute;c m&aacute;i Nhật cực đẹp</h2>

<p dir="ltr">Dưới đ&acirc;y l&agrave; một số kiểu t&oacute;c m&aacute;i Nhật Bản độc đ&aacute;o v&agrave; ph&ugrave; hợp cho nhiều phong c&aacute;ch:</p>

<h3 dir="ltr">3.1 Kiểu t&oacute;c Nhật Bản ngắn kết hợp với m&aacute;i thưa đ&aacute;ng y&ecirc;u</h3>

<p dir="ltr">Kiểu t&oacute;c n&agrave;y l&agrave; một lựa chọn tuyệt vời cho những người th&iacute;ch vẻ đẹp tomboy v&agrave; muốn ăn gian tuổi t&aacute;c một c&aacute;ch hiệu quả. Đ&acirc;y l&agrave; sự thay đổi ho&agrave;n hảo nếu bạn muốn thử một phong c&aacute;ch mới.</p>

<h3 dir="ltr">3.2 T&oacute;c kiểu Nhật Bản ngắn kết hợp m&aacute;i bằng d&agrave;y</h3>

<p dir="ltr">Kiểu t&oacute;c n&agrave;y ph&ugrave; hợp cho c&aacute;c bạn g&aacute;i c&oacute; khu&ocirc;n mặt tr&ograve;n. N&oacute; gi&uacute;p l&agrave;m mỏng gương mặt v&agrave; che đi những đặc điểm kh&ocirc;ng mong muốn. Kiểu t&oacute;c n&agrave;y rất được ưa chuộng tại Nhật Bản.</p>

<p dir="ltr"><img alt="Tóc kiểu Nhật Bản ngắn kết hợp mái bằng dày" src="https://bizweb.dktcdn.net/100/438/408/files/toc-mai-nhat-yody-vn5.jpg?v=1697254752586" /></p>

<p dir="ltr"><em>T&oacute;c kiểu Nhật Bản ngắn kết hợp m&aacute;i bằng d&agrave;y</em><br />
<br />
Hy vọng, với b&agrave;i viết về t&oacute;c m&aacute;i Nhật m&agrave;&nbsp;<strong><a href="https://yody.vn/">YODY</a></strong>&nbsp;vừa gửi đến, c&aacute;c bạn cũng đ&atilde; c&oacute; th&ecirc;m nhiều th&ocirc;ng tin hữu &iacute;ch d&agrave;nh cho m&igrave;nh.</p>
', CAST(N'2023-11-01T16:50:03.203' AS DateTime), N'https://i.pinimg.com/originals/cb/cd/f8/cbcdf82ee42b7bbf292eb964ffffa274.jpg', 5)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (14, N'TOP 18 kiểu tóc ngang vai uốn cụp đẹp nhất, cực đáng yêu và cute', N'Một trong những kiểu tóc có thể đem lại vẻ trẻ trung, dịu dàng, xinh đẹp chính là tóc ngang uốn cụp. Hãy cùng tham khảo một số kiểu tóc ngang vai uốn cụp đang hot hiện nay nhé!', N'<h2 dir="ltr">1. T&oacute;c ngang vai uốn cụp m&aacute;i bay đ&aacute;ng y&ecirc;u</h2>

<p dir="ltr">T&oacute;c ngang vai với uốn cụp v&agrave; m&aacute;i bay tạo n&ecirc;n một lựa chọn linh hoạt cho nhiều d&aacute;ng mặt v&agrave; đặc biệt ph&ugrave; hợp với phong c&aacute;ch nhẹ nh&agrave;ng v&agrave; quyến rũ. M&aacute;i d&agrave;i cung cấp sự che khuất tốt cho mọi khuyết điểm, gi&uacute;p tạo n&ecirc;n một diện mạo tươi trẻ v&agrave; tự tin.</p>

<p dir="ltr"><em><img alt="Tóc ngang vai uốn cụp đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/toc-ngang-vai-uon-cup-yodyvn.jpg?v=1697258215071" /></em></p>

<p dir="ltr"><em>T&oacute;c ngang vai uốn cụp m&aacute;i bay đ&aacute;ng y&ecirc;u</em></p>

<p dir="ltr">M&agrave;u sắc t&oacute;c c&oacute; thể được t&ugrave;y chọn để l&agrave;m t&ocirc;n l&ecirc;n l&agrave;n da v&agrave; tạo điểm nhấn cho phong c&aacute;ch c&aacute; nh&acirc;n. Kh&ocirc;ng ph&acirc;n biệt bạn đang đi l&agrave;m, học tập, tham gia c&aacute;c hoạt động giải tr&iacute;, hay hẹn h&ograve;, kiểu t&oacute;c n&agrave;y sẽ ho&agrave;n hảo kết hợp với nhiều loại trang phục v&agrave; lựa chọn trang điểm kh&aacute;c nhau.</p>

<h2 dir="ltr">2. T&oacute;c ngang vai uốn cụp chữ C xinh đẹp</h2>

<p dir="ltr">Kiểu t&oacute;c n&agrave;y c&oacute; sự uốn chữ C nhẹ nh&agrave;ng, tạo ra một d&aacute;ng vẻ đẹp tự nhi&ecirc;n, vừa chạm v&agrave;o cổ, t&ocirc;n l&ecirc;n n&eacute;t duy&ecirc;n d&aacute;ng của gương mặt v&agrave; xương quai xanh quyến rũ. Sự uốn cong vừa phải của m&aacute;i t&oacute;c gi&uacute;p l&agrave;m nhẹ bộ mặt tổng thể.</p>

<p dir="ltr"><em><img alt="kiểu Tóc ngang vai uốn cụp đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/toc-ngang-vai-uon-cup-yodyvn1.jpg?v=1697258215832" /></em></p>

<p dir="ltr"><em>T&oacute;c ngang vai uốn cụp chữ C xinh đẹp</em></p>

<p dir="ltr">Đ&acirc;y l&agrave; một lựa chọn t&oacute;c ph&ugrave; hợp cho mọi ho&agrave;n cảnh v&agrave; tạo điểm nhấn cho c&aacute; t&iacute;nh của bạn. Nếu bạn ưa th&iacute;ch phong c&aacute;ch ngọt ng&agrave;o v&agrave; nhẹ nh&agrave;ng, bạn c&oacute; thể xem x&eacute;t c&aacute;c t&ocirc;ng m&agrave;u như n&acirc;u socola, hạt dẻ, hoặc t&iacute;m oải hương. Tuy nhi&ecirc;n, nếu bạn đang t&igrave;m kiếm sự độc đ&aacute;o v&agrave; c&aacute; t&iacute;nh, bạn c&oacute; thể thử với bạch kim, xanh ombre, hoặc hồng để thể hiện phong c&aacute;ch của m&igrave;nh.</p>

<h2 dir="ltr">3. T&oacute;c ngang vai uốn cụp layer</h2>

<p dir="ltr">Kiểu t&oacute;c layer s&oacute;ng lơi ngang vai hoặc t&oacute;c cụp ngang vai với lớp lớp tạo ra sự độc đ&aacute;o v&agrave; cuốn h&uacute;t. T&oacute;c được tỉa mỏng ở phần ngọn gi&uacute;p giảm trọng lượng v&agrave; l&agrave;m cho việc tạo kiểu trở n&ecirc;n dễ d&agrave;ng, đặc biệt l&agrave; cho những người c&oacute; t&oacute;c d&agrave;y.</p>

<p dir="ltr"><em><img alt="kiểu Tóc ngang vai uốn cụp đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/toc-ngang-vai-uon-cup-yodyvn2.jpg?v=1697258256297" /></em></p>

<p dir="ltr"><em>T&oacute;c ngang vai uốn cụp layer</em></p>

<p dir="ltr">Kiểu t&oacute;c layer ngang vai n&agrave;y cũng gi&uacute;p bạn tr&ocirc;ng trẻ hơn m&agrave; kh&ocirc;ng cần sử dụng phương ph&aacute;p n&acirc;ng cấp tuổi. Bất kể bạn chọn m&aacute;i t&oacute;c d&agrave;i tự nhi&ecirc;n hoặc m&aacute;i t&oacute;c thưa, kiểu n&agrave;y sẽ gi&uacute;p tạo n&ecirc;n một diện mạo ho&agrave;n hảo v&agrave; thanh tho&aacute;t. Nếu bạn c&oacute; những điểm yếu tr&ecirc;n khu&ocirc;n mặt, h&atilde;y c&acirc;n nhắc độ d&agrave;i của từng lớp t&oacute;c để che đi những khuyết điểm đ&oacute; v&agrave; tăng th&ecirc;m sự tự tin cho bản th&acirc;n.</p>

<h2 dir="ltr">4. T&oacute;c ngang vai uốn cụp xoăn lọn nhỏ nữ t&iacute;nh</h2>

<p dir="ltr">T&oacute;c xoăn d&agrave;i, đến ngang vai v&agrave; nhẹ nh&agrave;ng tạo n&ecirc;n một lựa chọn tuyệt vời cho nhiều kiểu d&aacute;ng khu&ocirc;n mặt v&agrave; phong c&aacute;ch thời trang kh&aacute;c nhau. Cho c&ocirc;ng việc văn ph&ograve;ng, bạn c&oacute; thể dễ d&agrave;ng biến h&oacute;a th&agrave;nh một qu&yacute; c&ocirc; thanh lịch bằng việc đơn giản l&agrave; mặc &aacute;o blazer k&egrave;m &aacute;o sơ mi v&agrave; ch&acirc;n v&aacute;y. Đi chơi hoặc hẹn h&ograve;, chỉ cần một chiếc v&aacute;y nhẹ nh&agrave;ng l&agrave; bạn đ&atilde; sẵn s&agrave;ng để trở th&agrave;nh c&ocirc; g&aacute;i dịu d&agrave;ng.</p>

<p dir="ltr"><em><img alt="kiểu Tóc ngang vai uốn cụp đẹp" src="https://bizweb.dktcdn.net/100/438/408/files/toc-ngang-vai-uon-cup-yodyvn3.jpg?v=1697258257263" /></em></p>

<p dir="ltr"><em>T&oacute;c ngang vai uốn cụp xoăn lọn nhỏ nữ t&iacute;nh</em></p>

<p dir="ltr">Điểm đ&aacute;ng ch&uacute; &yacute;, kiểu t&oacute;c n&agrave;y kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều c&ocirc;ng đoạn chăm s&oacute;c. Sau khi gội đầu, bạn chỉ cần sấy kh&ocirc; v&agrave; t&oacute;c sẽ tự nhi&ecirc;n v&agrave;o nếp, tiết kiệm thời gian v&agrave; kh&ocirc;ng cần tạo kiểu phức tạp, vẫn giữ được vẻ đẹp tự nhi&ecirc;n.<br />
&nbsp;</p>

<p dir="ltr">T&oacute;c m&aacute;i ngang ngắn ngang vai rất ph&ugrave; hợp với c&aacute;c bạn học sinh v&agrave; sinh vi&ecirc;n. Kiểu t&oacute;c n&agrave;y c&oacute; thể gi&uacute;p bạn &quot;hack tuổi&quot; một c&aacute;ch hiệu quả v&agrave; đặc biệt c&ograve;n l&agrave;m cho khu&ocirc;n mặt trở n&ecirc;n thon gọn hơn, gi&uacute;p bạn lu&ocirc;n tự tin trước mọi người.</p>

<p dir="ltr">Ph&iacute;a tr&ecirc;n l&agrave; danh s&aacute;ch 18 kiểu t&oacute;c ngang vai uốn cụp được ph&aacute;i đẹp y&ecirc;u th&iacute;ch nhất.&nbsp;<a href="https://yody.vn/"><strong>YODY</strong></a>&nbsp;hy vọng qua những danh s&aacute;ch t&oacute;c n&agrave;y, c&aacute;c n&agrave;ng sẽ chọn cho m&igrave;nh mẫu ph&ugrave; hợp nhất để &quot;ăn gian&quot; tuổi th&agrave;nh c&ocirc;ng.</p>
', CAST(N'2023-11-05T16:50:03.203' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/toc-ngang-vai-uon-cup-yodyvn1.jpg?v=1697258215832', 9)
INSERT [dbo].[Blog] ([id], [title], [shortContent], [content], [publishedDate], [image], [user_id]) VALUES (15, N'Điểm danh TOP 12 di tích lịch sử ở thành phố Hồ Chí Minh', N'Trải qua hơn 4000 năm thăng trầm của lịch sử, mỗi người dân Việt Nam đều luôn mang trong mình niềm tự hào dân tộc và lòng biết ơn sâu sắc đến với những thế hệ ông cha.', N'<h2 dir="ltr" style="font-style:normal; text-align:justify">1. Dinh Độc Lập</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Nếu bạn c&oacute; dịp gh&eacute; thăm th&agrave;nh phố Hồ Ch&iacute; Minh, đừng qu&ecirc;n gh&eacute; thăm di t&iacute;ch lịch sử Dinh Độc Lập nh&eacute;! C&ocirc;ng tr&igrave;nh do vi&ecirc;n thống đốc Ph&aacute;p tại miền Nam Việt Nam l&agrave; La Grandi&egrave;re đặt vi&ecirc;n đ&aacute; đầu ti&ecirc;n khởi c&ocirc;ng x&acirc;y dựng ng&agrave;y 23/2/1868 v&agrave; ho&agrave;n tất v&agrave;o năm 1871, đ&atilde; chứng kiến nhiều sự kiện lịch sử quan trọng của Việt Nam. Đ&acirc;y từng l&agrave; nơi l&agrave;m việc của Tổng thống miền Nam Việt Nam trong thời kỳ chiến tranh. Đặc biệt, nơi đ&acirc;y chứa nhiều hiện vật v&agrave; tư liệu qu&yacute; b&aacute;u về lịch sử của Việt Nam.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-1.jpg?v=1694744199897" style="border-radius:15px; border:0px none; box-sizing:border-box; height:503.328px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Dinh Độc Lập</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Dinh Độc Lập lưu giữ rất nhiều sự kiện, kỷ niệm v&agrave; di vật từ thời kỳ chiến đấu của Việt Nam chống Ph&aacute;p, Nhật Bản v&agrave; c&aacute;c thế lực thực d&acirc;n. Để hiểu r&otilde; hơn về cuộc chiến đấu, sự hy sinh v&agrave; l&ograve;ng dũng cảm của &ocirc;ng cha ta, bạn n&ecirc;n đến v&agrave; chi&ecirc;m ngưỡng những di vật n&agrave;y bằng đ&ocirc;i mắt của ch&iacute;nh m&igrave;nh.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-2.jpg?v=1694744201205" style="border-radius:15px; border:0px none; box-sizing:border-box; height:454px; margin:0px; max-width:100%; vertical-align:middle; width:755px" />Check in tại Dinh Độc Lập</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Dinh Độc Lập kh&ocirc;ng chỉ l&agrave; một bảo t&agrave;ng lịch sử, m&agrave; c&ograve;n l&agrave; biểu tượng của sự đo&agrave;n kết v&agrave; quyết t&acirc;m của nh&acirc;n d&acirc;n Việt Nam trong cuộc chiến tranh gi&agrave;nh độc lập. Đến đ&acirc;y, bạn sẽ cảm nhận được tinh thần đo&agrave;n kết của người Việt, v&agrave; lịch sử của một đất nước đang nỗ lực v&agrave; ph&aacute;t triển.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Địa chỉ: Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Giờ mở cửa: 08:00&ndash;15:30 c&aacute;c ng&agrave;y trong tuần.</span></span></span></span></p>

<h2 dir="ltr" style="font-style:normal; text-align:justify">2. Bảo t&agrave;ng Chứng t&iacute;ch Chiến tranh Việt Nam</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Bảo t&agrave;ng Chứng t&iacute;ch Chiến tranh Việt Nam l&agrave; di t&iacute;ch lịch sử ở Th&agrave;nh phố Hồ Ch&iacute; Minh được nhiều người tham quan. Đ&acirc;y l&agrave; nơi bạn c&oacute; thể hiểu r&otilde; hơn về cuộc chiến tranh Việt Nam qua c&aacute;c tư liệu, h&igrave;nh ảnh v&agrave; hiện vật. Đồng thời đến đ&acirc;y cũng l&agrave; một trải nghiệm học hỏi th&uacute; vị về qu&aacute; khứ đầy bi thương v&agrave; h&agrave;o h&ugrave;ng của đất nước.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-3.jpg?v=1694744202277" style="border-radius:15px; border:0px none; box-sizing:border-box; height:562.719px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Bảo t&agrave;ng Chứng t&iacute;ch Chiến tranh Việt Nam</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Địa chỉ: Phường 6, Quận 3, Th&agrave;nh phố Hồ Ch&iacute; Minh</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Giờ mở cửa: 07:30&ndash;17:30 c&aacute;c ng&agrave;y trong tuần.</span></span></span></span></p>

<h2 dir="ltr" style="font-style:normal; text-align:justify">3. Bảo t&agrave;ng Lịch sử Th&agrave;nh phố TP. Hồ Ch&iacute; Minh</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Một trong những điểm đến th&uacute; vị kh&aacute;c khi đến với S&agrave;i G&ograve;n ch&iacute;nh l&agrave; Bảo t&agrave;ng lịch sử th&agrave;nh phố Hồ Ch&iacute; Minh. Bảo t&agrave;ng Lịch sử Th&agrave;nh phố TP. Hồ Ch&iacute; Minh l&agrave; một kho t&agrave;ng của những c&acirc;u chuyện về th&agrave;nh phố n&agrave;y từ thời kỳ cổ đại cho đến hiện đại. Bạn c&oacute; thể thấy sự ph&aacute;t triển của th&agrave;nh phố qua từng giai đoạn lịch sử, gắn liền với nhiều triều đại phong kiến v&agrave; nhiều gi&aacute; trị về văn ho&aacute; d&acirc;n tộc.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-4.jpg?v=1694744257363" style="border-radius:15px; border:0px none; box-sizing:border-box; height:604px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Bảo t&agrave;ng Lịch sử Th&agrave;nh phố TP. Hồ Ch&iacute; Minh</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Địa chỉ: Số 2 Nguyễn Bỉnh Khi&ecirc;m, Phường Bến Ngh&eacute;, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh&nbsp;</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Giờ mở cửa: 08:00&ndash;17:00 c&aacute;c ng&agrave;y trong tuần.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">XEM TH&Ecirc;M:</span></span></span></span></p>

<ul dir="ltr">
	<li style="text-align:justify"><a href="https://yody.vn/top-khu-vui-choi-o-sai-gon-vui-nhat" style="box-sizing:border-box; color:#000000; text-decoration:none; background:transparent"><span style="color:#e67e22"><strong>12+ khu vui chơi ở S&agrave;i G&ograve;n cực đ&ocirc;ng vui cho bạn xả stress</strong></span></a></li>
	<li style="text-align:justify"><a href="https://yody.vn/du-lich-gan-sai-gon" style="box-sizing:border-box; color:#000000; text-decoration:none; background:transparent"><span style="color:#e67e22"><strong>Lưu ngay 20+ địa điểm du lịch gần S&agrave;i G&ograve;n cực đẹp, thư gi&atilde;n</strong></span></a></li>
	<li style="text-align:justify"><span style="color:#e67e22"><strong><a href="https://yody.vn/ao-polo-nam" style="box-sizing:border-box; color:#000000; text-decoration:none; background:transparent">&Aacute;o polo nam</a>&nbsp;YODY ch&iacute;nh h&atilde;ng</strong></span></li>
</ul>

<h2 dir="ltr" style="font-style:normal; text-align:justify">4. Bảo t&agrave;ng Mỹ thuật Th&agrave;nh phố TP. Hồ Ch&iacute; Minh</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Nếu bạn đam m&ecirc; nghệ thuật, bảo t&agrave;ng Mỹ thuật Th&agrave;nh phố TP. Hồ Ch&iacute; Minh l&agrave; điểm đến tuyệt vời. Đ&acirc;y l&agrave; nơi trưng b&agrave;y c&aacute;c t&aacute;c phẩm nghệ thuật độc đ&aacute;o v&agrave; đa dạng của c&aacute;c hoạ sĩ Việt Nam.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-5.jpg?v=1694744258311" style="border-radius:15px; border:0px none; box-sizing:border-box; height:503.328px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Bảo t&agrave;ng Mỹ thuật Th&agrave;nh phố TP. Hồ Ch&iacute; Minh</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Đặc biệt, với việc được x&acirc;y dựng theo một phong c&aacute;ch rất T&acirc;y, kh&aacute;ch tham quan sẽ bị cuốn h&uacute;t bởi sự sang trọng, quyền qu&yacute;. Mỗi g&oacute;c đều sẽ g&oacute;p phần tạo n&ecirc;n những bức ảnh &ldquo;đỉnh của ch&oacute;p&rdquo; cho những t&iacute;n đồ đam m&ecirc; chụp h&igrave;nh.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Địa chỉ: 97A P. Đức Ch&iacute;nh, Phường Nguyễn Th&aacute;i B&igrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Giờ mở cửa: 08:00&ndash;17:00 c&aacute;c ng&agrave;y trong tuần.</span></span></span></span></p>

<h2 dir="ltr" style="font-style:normal; text-align:justify">5. Bến Nh&agrave; Rồng</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Bến Nh&agrave; Rồng l&agrave; nơi ch&agrave;ng thanh ni&ecirc;n Nguyễn Tất Th&agrave;nh, t&ecirc;n thật của Chủ tịch Hồ Ch&iacute; Minh, ra đi t&igrave;m đường cứu nước năm 1911. Đ&acirc;y l&agrave; một trong những biểu tượng quan trọng của sự nghiệp c&aacute;ch mạng Việt Nam.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-6.jpg?v=1694744285861" style="border-radius:15px; border:0px none; box-sizing:border-box; height:502.312px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Bến Nh&agrave; Rồng</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Theo c&aacute;c con số thống k&ecirc;, c&oacute; hơn 90% bạn trẻ sinh sống tại Th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; từng gh&eacute; thăm Bến Nh&agrave; Rồng &iacute;t nhất một lần trong cuộc đời của họ. Điều n&agrave;y cho thấy sức h&uacute;t kh&ocirc;ng thể chối c&atilde;i của di t&iacute;ch lịch sử n&agrave;y đối với người d&acirc;n địa phương v&agrave; du kh&aacute;ch từ khắp nơi. Bến Nh&agrave; Rồng kh&ocirc;ng chỉ l&agrave; một địa điểm du lịch, m&agrave; c&ograve;n l&agrave; một phần quan trọng của lịch sử TP. Hồ Ch&iacute; Minh v&agrave; của to&agrave;n d&acirc;n Việt Nam.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Khi đến Bến Nh&agrave; Rồng, bạn sẽ c&oacute; cơ hội kh&aacute;m ph&aacute; v&agrave; t&igrave;m hiểu th&ecirc;m về đặc trưng kiến tr&uacute;c Việt Nam từ thời xưa. Một điều khiến ấn tượng mạnh với du kh&aacute;ch l&agrave; phong c&aacute;ch thiết kế truyền thống v&agrave; những tượng rồng sống động. Những t&aacute;c phẩm nghệ thuật n&agrave;y thể hiện sự tinh tế v&agrave; s&aacute;ng tạo của người d&acirc;n Việt Nam trong việc bảo tồn v&agrave; ph&aacute;t triển kiến tr&uacute;c truyền thống.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Đặc biệt, tại Bến Nh&agrave; Rồng, bạn sẽ thấy rất nhiều m&ocirc; h&igrave;nh ph&oacute;ng t&aacute;c, tranh khắc độc đ&aacute;o, khắc họa lại cảnh đời sống thời cơ cực của người d&acirc;n Việt Nam một c&aacute;ch rất r&otilde; n&eacute;t. Những hiện vật n&agrave;y c&ugrave;ng với c&aacute;c biểu đồ v&agrave; h&igrave;nh ảnh lịch sử sẽ gi&uacute;p bạn hiểu s&acirc;u hơn về cuộc sống v&agrave; cuộc chiến đấu của người Việt Nam trong qu&aacute; khứ.</span></span></span></span></p>

<h2 dir="ltr" style="font-style:normal; text-align:justify">6. Địa đạo Củ Chi</h2>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Địa đạo Củ Chi l&agrave; hệ thống địa đạo dưới l&ograve;ng đất độc đ&aacute;o v&agrave; để lại dấu ấn đặc biệt đối với từng khu kh&aacute;ch đến thăm. Đ&acirc;y l&agrave; một trong số những di t&iacute;ch lịch sử ở th&agrave;nh phố Hồ Ch&iacute; Minh m&agrave; bạn n&ecirc;n gh&eacute; thăm để kh&aacute;m ph&aacute; mạng lưới địa đạo n&agrave;y v&agrave; hiểu th&ecirc;m về cuộc sống của người l&iacute;nh trong thời chiến.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em><img alt="di tích lịch sử ở thành phố Hồ Chí Minh" src="https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-7.jpg?v=1694744286918" style="border-radius:15px; border:0px none; box-sizing:border-box; height:424.812px; margin:0px; max-width:100%; vertical-align:middle; width:755px" /></em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff"><em>Địa đạo Củ Chi</em></span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:14px"><span style="color:#000000"><span style="font-family:SVN-Gilroy,sans-serif"><span style="background-color:#ffffff">Đến Địa đạo Củ Chi bạn sẽ được chứng kiến những đường hầm được thiết kế, bố tr&iacute; v&ocirc; c&ugrave;ng tinh vi của những người chiến sĩ g&oacute;p phần tạo n&ecirc;n th&agrave;nh c&ocirc;ng trong thời kỳ kh&aacute;ng chiến chống giặc.</span></span></span></span></p>

<p dir="ltr" style="margin-left:0px; margin-right:0px; text-align:justify"><br />
Th&agrave;nh phố Hồ Ch&iacute; Minh, với những di t&iacute;ch lịch sử qu&yacute; b&aacute;u, l&agrave; một điểm đến tuyệt vời để kh&aacute;m ph&aacute; v&agrave; t&igrave;m hiểu về lịch sử của đất nước. Hy vọng rằng b&agrave;i viết n&agrave;y của&nbsp;<a href="https://yody.vn/"><strong>YODY</strong></a>&nbsp;đ&atilde; gi&uacute;p bạn c&oacute; c&aacute;i nh&igrave;n tổng quan về TOP 12 di t&iacute;ch lịch sử ở th&agrave;nh phố Hồ Ch&iacute; Minh. H&atilde;y d&agrave;nh thời gian thăm quan v&agrave; trải nghiệm những gi&aacute; trị văn h&oacute;a tại đ&acirc;y nh&eacute;!</p>
', CAST(N'2023-11-08T16:50:03.000' AS DateTime), N'https://bizweb.dktcdn.net/100/438/408/files/di-tich-lich-su-o-thanh-pho-ho-chi-minh-1.jpg?v=1694744199897', 3)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [user_id]) VALUES (1, 1)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (2, 2)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (3, 3)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (4, 4)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (5, 5)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (6, 6)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (7, 7)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (8, 8)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (9, 9)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (10, 10)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (11, 11)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (12, 12)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (13, 13)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (14, 14)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (15, 15)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (16, 16)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (17, 17)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (18, 18)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (19, 19)
INSERT [dbo].[Cart] ([id], [user_id]) VALUES (20, 20)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (1, N'Áo', NULL)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (2, N'Quần', NULL)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (3, N'Đồ mặc trong', NULL)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (4, N'Phụ kiện', NULL)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (5, N'Áo Polo', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (6, N'Áo Thun', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (7, N'Áo Khoác', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (8, N'Áo Sơ Mi', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (9, N'Áo Nỉ', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (10, N'Áo Len', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (11, N'Áo Vest', 1)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (12, N'Quần Jeans', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (13, N'Quần Âu', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (14, N'Quần Kaki', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (15, N'Quần Short', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (16, N'Quần Legging', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (17, N'Áo Ba Lỗ', 3)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (18, N'Áo Giữ Nhiệt', 3)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (19, N'Quần Lót', 3)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (20, N'Áo 2 Dây', 3)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (21, N'Đồ lót', 3)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (22, N'Đồ khác', NULL)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (23, N'Đồ thể thao', 22)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (24, N'Chân váy bé gái', 22)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (25, N'Đầm bé gái', 22)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (26, N'Thắt lưng', 4)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (27, N'Túi xách', 4)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (28, N'Giày', 4)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (29, N'Cặp sách', 4)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (30, N'Phụ kiện khác', 4)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (31, N'Quần Nỉ', 2)
INSERT [dbo].[Category] ([id], [name], [parent_id]) VALUES (32, N'Dép', 22)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (1, N'Red', N'#FF0000')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (2, N'Orange ', N'#FFA500')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (3, N'Yellow', N'#FFFF00')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (4, N'Green', N'#00FF00')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (5, N'Blue', N'#0000FF')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (6, N'Purple', N'#800080')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (7, N'Pink', N'#FFC0CB')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (8, N'White', N'#FFFFFF')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (9, N'Black', N'#000000')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (10, N'Gray', N'#808080')
INSERT [dbo].[Color] ([id], [name], [hex]) VALUES (11, N'Brown', N'#A52A2A')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (1, N'Kiến thức bổ ích', 19, 1, CAST(N'2023-10-16T16:57:15.933' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (2, N'Rất hữu ích cho mọi người', 13, 1, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (3, N'Bài viết thất thú vị', 6, 1, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (4, N'Bài viết thất thú vị', 17, 2, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (5, N'Thích thú với bài viết này', 13, 2, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (6, N'Kiến thức bổ ích', 19, 2, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (7, N'Kiến thức bổ ích', 19, 3, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (8, N'Bài viết thất thú vị', 16, 3, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (9, N'Kiến thức bổ ích', 16, 3, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (10, N'Rất hữu ích cho mọi người', 2, 4, CAST(N'2023-10-16T16:57:16.023' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (11, N'Rất thích bài viết này', 6, 4, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (12, N'Bài viết thất thú vị', 17, 4, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (13, N'Kiến thức bổ ích', 6, 5, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (14, N'Kiến thức bổ ích', 16, 5, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (15, N'Bài viết thất thú vị', 9, 5, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (16, N'Kiến thức bổ ích', 4, 6, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (17, N'Rất hữu ích cho mọi người', 18, 6, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (18, N'Rất thích bài viết này', 16, 6, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (19, N'Thích thú với bài viết này', 3, 7, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (20, N'Rất hữu ích cho mọi người', 5, 7, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (21, N'Bài viết thất thú vị', 19, 7, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (22, N'Rất hữu ích cho mọi người', 19, 8, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (23, N'Rất thích bài viết này', 7, 8, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (24, N'Thích thú với bài viết này', 16, 8, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (25, N'Rất thích bài viết này', 2, 9, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (26, N'Kiến thức bổ ích', 11, 9, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (27, N'Rất thích bài viết này', 6, 9, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (28, N'Kiến thức bổ ích', 13, 10, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (29, N'Kiến thức bổ ích', 19, 10, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (30, N'Kiến thức bổ ích', 14, 10, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (31, N'Bài viết thất thú vị', 11, 11, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (32, N'Kiến thức bổ ích', 14, 11, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (33, N'Rất thích bài viết này', 3, 11, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (34, N'Kiến thức bổ ích', 5, 12, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (35, N'Rất thích bài viết này', 20, 12, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (36, N'Mong tác giả ra thêm nhiều bài mới', 12, 12, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (37, N'Kiến thức bổ ích', 1, 13, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (38, N'Rất thích bài viết này', 18, 13, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (39, N'Rất hữu ích cho mọi người', 2, 13, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (40, N'Kiến thức bổ ích', 8, 14, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (41, N'Bài viết thất thú vị', 8, 14, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (42, N'Rất thích bài viết này', 15, 14, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (43, N'Rất hữu ích cho mọi người', 7, 15, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (44, N'Bài viết thất thú vị', 3, 15, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
INSERT [dbo].[Comment] ([id], [content], [user_id], [blog_id], [date]) VALUES (45, N'Bài viết thất thú vị', 18, 15, CAST(N'2023-10-16T16:57:16.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (1, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6079-vag-1-yodyvn.jpg?v=1681108319690', 1, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (2, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6079-vag-7-yodyvn.jpg?v=1681361550233', 1, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (3, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6079-vag-12-yodyvn.jpg?v=1681361555227', 1, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (4, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6079-vag-4-yodyvn.jpg?v=1681361560527', 1, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (5, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-xlo-qsm6037-nav-17.jpg?v=1689665067340', 2, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (6, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-xlo-qsm6037-nav-18.jpg?v=1689923775090', 2, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (7, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-xlo-qsm6037-nav-16.jpg?v=1689923780507', 2, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (8, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-xlo-qsm6037-nav-26.jpg?v=1689923787117', 2, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (9, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6393-ktn-2.jpg?v=1692584294457', 3, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (10, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6393-ktn-4.jpg?v=1692584309187', 3, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (11, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6393-ktn-5.jpg?v=1692584310257', 3, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (12, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6393-ktn-8.jpg?v=1692584311563', 3, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (13, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6059-dxg-7.jpg?v=1688954153740', 4, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (14, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6059-dxg-5.jpg?v=1688954153740', 4, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (15, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6059-dxg-6.jpg?v=1688954153740', 4, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (16, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6059-dxg-4.jpg?v=1688954153740', 4, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (17, N'https://bizweb.dktcdn.net/100/438/408/products/apm6241-ddo-qsm6029-vac-03.jpg?v=1690163394573', 5, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (18, N'https://bizweb.dktcdn.net/100/438/408/products/apm6241-ddo-qsm6029-vac-05.jpg?v=1690163394573', 5, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (19, N'https://bizweb.dktcdn.net/100/438/408/products/apm6241-ddo-qsm6029-vac-06.jpg?v=1690163394573', 5, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (20, N'https://bizweb.dktcdn.net/100/438/408/products/apm6241-ddo-qsm6029-vac-02.jpg?v=1690163394573', 5, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (21, N'https://bizweb.dktcdn.net/100/438/408/products/apm6287-ncf-qam6047-bee-5.jpg?v=1688954154877', 6, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (22, N'https://bizweb.dktcdn.net/100/438/408/products/apm6287-ncf-qam6047-bee-8.jpg?v=1688954154877', 6, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (23, N'https://bizweb.dktcdn.net/100/438/408/products/apm6287-ncf-qam6047-bee-9.jpg?v=1688954154877', 6, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (24, N'https://bizweb.dktcdn.net/100/438/408/products/apm6287-ncf-qam6047-bee-3.jpg?v=1688954154877', 6, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (25, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6167-bee-3.jpg?v=1688954155603', 7, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (26, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6167-bee-4.jpg?v=1694049957033', 7, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (27, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6167-bee-5.jpg?v=1694049957033', 7, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (28, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6167-bee-2.jpg?v=1694049957033', 7, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (29, N'https://bizweb.dktcdn.net/100/438/408/products/apm4239-nau-2-1-jpeg.jpg?v=1688954176150', 8, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (30, N'https://bizweb.dktcdn.net/100/438/408/products/apm4239-nau-6-jpeg.jpg?v=1688954176150', 8, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (31, N'https://bizweb.dktcdn.net/100/438/408/products/apm4239-nau-3-jpeg.jpg?v=1688954176150', 8, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (32, N'https://bizweb.dktcdn.net/100/438/408/products/apm4239-nau-4-1-jpeg.jpg?v=1688954176150', 8, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (33, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6179-xah-2.jpg?v=1692582658417', 9, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (34, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6179-xah-4.jpg?v=1692582859797', 9, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (35, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6179-xah-5.jpg?v=1692582859797', 9, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (36, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6179-xah-sqm6039-tit-2.jpg?v=1692582859797', 9, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (37, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6253-tra-2.jpg?v=1692606019887', 10, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (38, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6253-tra-4.jpg?v=1692583809337', 10, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (39, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6253-tra-5.jpg?v=1692583809337', 10, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (40, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6253-tra-qjm5043-xdm-9.jpg?v=1692583809337', 10, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (41, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-bac-ha-apm6295-xre-03-yody.jpg?v=1693363080843', 11, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (42, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-bac-ha-apm6295-xre-04-yody.jpg?v=1689923205630', 11, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (43, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-bac-ha-apm6295-xre-06-yody.jpg?v=1689923197123', 11, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (44, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-bac-ha-apm6295-xre-qam6049-bee-11-yody.jpg?v=1689923190607', 11, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (45, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6391-knx-2.jpg?v=1692583110447', 12, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (46, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6391-knx-4.jpg?v=1692583111350', 12, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (47, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6391-knx-5.jpg?v=1692583112290', 12, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (48, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6391-knx-11.jpg?v=1692583114180', 12, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (49, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6175-nau-4-yody.jpg?v=1689923491410', 13, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (50, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6175-nau-6-yody.jpg?v=1689923592757', 13, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (51, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6175-nau-1-yody.jpg?v=1689923600437', 13, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (52, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-apm6175-nau-7-yody.jpg?v=1689923607747', 13, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (53, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-cba-1.jpg?v=1695612007880', 14, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (54, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-cba-4.jpg?v=1695612037527', 14, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (55, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-cba-5.jpg?v=1695612037527', 14, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (56, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-cba-10.jpg?v=1695612037527', 14, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (57, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-vag-4.jpg?v=1689923751607', 15, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (58, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-vag-6.jpg?v=1689923836310', 15, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (59, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-vag-7.jpg?v=1689923841883', 15, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (60, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-cafe-to-ong-yody-apm6387-vag-qsm6023-xda-3.jpg?v=1689923846830', 15, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (61, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-5.jpg?v=1692062567450', 16, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (62, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-1.jpg?v=1692062567450', 16, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (63, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-2.jpg?v=1692062567450', 16, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (64, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-6.jpg?v=1692062571033', 16, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (65, N'https://bizweb.dktcdn.net/100/438/408/products/apn6054-tra-cvn6064-den-10.jpg?v=1692605993533', 17, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (66, N'https://bizweb.dktcdn.net/100/438/408/products/apn6054-tra-cvn6064-den-12.jpg?v=1692005783700', 17, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (67, N'https://bizweb.dktcdn.net/100/438/408/products/apn6054-tra-cvn6064-den-7.jpg?v=1692005783700', 17, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (68, N'https://bizweb.dktcdn.net/100/438/408/products/apn6054-tra-cvn6064-den-9.jpg?v=1692005783700', 17, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (69, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6032-ddo-1.jpg?v=1694055645903', 18, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (70, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6032-ddo-2.jpg?v=1694055606797', 18, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (71, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6032-ddo-6.jpg?v=1694055614960', 18, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (72, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6032-ddo-5.jpg?v=1694055616220', 18, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (73, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn5398-xre-8-yody.jpg?v=1685593671313', 19, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (74, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn5398-xre-10-yody.jpg?v=1696641509017', 19, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (75, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn5398-xre-1-1-yody.jpg?v=1696641509017', 19, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (76, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn5398-xre-3-yody.jpg?v=1696641509017', 19, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (77, N'https://bizweb.dktcdn.net/100/438/408/products/apn6184-tim-ssn6012-tim-19.jpg?v=1692005054983', 20, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (78, N'https://bizweb.dktcdn.net/100/438/408/products/apn6184-tim-ssn6012-tim-11.jpg?v=1692005065817', 20, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (79, N'https://bizweb.dktcdn.net/100/438/408/products/apn6184-tim-ssn6012-tim-13.jpg?v=1692005066973', 20, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (80, N'https://bizweb.dktcdn.net/100/438/408/products/apn6184-tim-ssn6012-tim-14.jpg?v=1692005067900', 20, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (81, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-5.jpg?v=1692062567450', 21, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (82, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-1.jpg?v=1692062567450', 21, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (83, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-2.jpg?v=1692062567450', 21, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (84, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6178-hog-6.jpg?v=1692062571033', 21, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (85, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-mat-chim-ke-nagng-yody-apn6206-kkp-cvn6162-bee-11.jpg?v=1692007062500', 22, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (86, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-mat-chim-ke-nagng-yody-apn6206-kkp-cvn6162-bee-14.jpg?v=1692007062500', 22, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (87, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-mat-chim-ke-nagng-yody-apn6206-kkp-cvn6162-bee-8.jpg?v=1692007062500', 22, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (88, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-mat-chim-ke-nagng-yody-apn6206-kkp-cvn6162-bee-9.jpg?v=1692007062500', 22, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (89, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-yody-apn6280-cba-2.jpg?v=1689665576390', 23, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (90, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-yody-apn6280-cba-4.jpg?v=1689665574463', 23, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (91, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-yody-apn6280-cba-5.jpg?v=1689665574463', 23, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (92, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-yody-apn6280-cba-cvn5090-den-11.jpg?v=1689665574463', 23, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (93, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-dang-croptiop-apn6142-hog-5-yody.jpg?v=1689914510883', 24, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (94, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-dang-croptiop-apn6142-hog-7-yody.jpg?v=1689920926763', 24, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (95, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-dang-croptiop-apn6142-hog-10-yody.jpg?v=1690163423260', 24, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (96, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-dang-croptiop-apn6142-hog-2-yody.jpg?v=1690163423260', 24, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (97, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-apn6114-vag-5-yody.jpg?v=1694050745737', 25, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (98, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-apn6114-vag-6-yody.jpg?v=1694050745737', 25, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (99, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-apn6114-vag-8-yody.jpg?v=1694050745737', 25, 3)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (100, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-cafe-to-ong-apn6114-vag-2-yody.jpg?v=1694050745737', 25, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (101, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-hoa-tiet-qua-tram-apn6210-xla-6-yody.jpg?v=1689924047733', 26, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (102, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-hoa-tiet-qua-tram-apn6210-xla-8-yody.jpg?v=1689924083130', 26, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (103, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-hoa-tiet-qua-tram-apn6210-xla-9-yody.jpg?v=1689924088000', 26, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (104, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-hoa-tiet-qua-tram-apn6210-xla-2-yody.jpg?v=1689924096263', 26, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (105, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6044-xpt-3-yodyvn.jpg?v=1689654228610', 27, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (106, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6044-xpt-5-yodyvn.jpg?v=1680924418673', 27, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (107, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6044-xpt-6-yodyvn.jpg?v=1680924422333', 27, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (108, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-apn6044-xpt-1-yodyvn.jpg?v=1680924426343', 27, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (109, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6024-cam-2.jpg?v=1694055988327', 28, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (110, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6024-cam-3.jpg?v=1694055993560', 28, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (111, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6024-cam-4.jpg?v=1694055993560', 28, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (112, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6024-cam-6.jpg?v=1694055993560', 28, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (113, N'https://bizweb.dktcdn.net/100/438/408/products/spk6020-tra-sjk5005-xlo-7.jpg?v=1693216139523', 29, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (114, N'https://bizweb.dktcdn.net/100/438/408/products/spk6020-tra-sjk5005-xlo-8.jpg?v=1693216141210', 29, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (115, N'https://bizweb.dktcdn.net/100/438/408/products/spk6020-tra-sjk5005-xlo-9.jpg?v=1693216141210', 29, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (116, N'https://bizweb.dktcdn.net/100/438/408/products/spk6020-tra-sjk5005-xlo-2.jpg?v=1693216141210', 29, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (117, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6026-xpt-6.jpg?v=1688954159527', 30, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (118, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6026-xpt-5.jpg?v=1688954159527', 30, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (119, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6026-xpt-2.jpg?v=1688954159527', 30, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (120, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-tre-em-apk6026-xpt-7.jpg?v=1688954159527', 30, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (121, N'https://bizweb.dktcdn.net/100/438/408/products/stm6061-xam-5.jpg?v=1690163398757', 31, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (122, N'https://bizweb.dktcdn.net/100/438/408/products/stm6061-xam-8.jpg?v=1690163398757', 31, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (123, N'https://bizweb.dktcdn.net/100/438/408/products/stm6061-xam-2.jpg?v=1690163398757', 31, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (124, N'https://bizweb.dktcdn.net/100/438/408/products/stm6061-xam-10.jpg?v=1690163398757', 31, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (125, N'https://bizweb.dktcdn.net/100/438/408/products/stm6073-den-8.jpg?v=1689560498837', 32, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (126, N'https://bizweb.dktcdn.net/100/438/408/products/stm6073-den-10.jpg?v=1689559568487', 32, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (127, N'https://bizweb.dktcdn.net/100/438/408/products/stm6073-den-11.jpg?v=1689559569737', 32, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (128, N'https://bizweb.dktcdn.net/100/438/408/products/stm6073-den-sqm6027-tit-9.jpg?v=1689560510030', 32, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (129, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-sum6003-den-5.jpg?v=1696221812233', 33, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (130, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-sum6003-den-4.jpg?v=1696221813707', 33, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (131, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-sum6003-den-3.jpg?v=1696221815103', 33, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (132, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-sum6003-den-6.jpg?v=1696221815103', 33, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (133, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-yoguu-gut6080-ddo-3.jpg?v=1690163451130', 34, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (134, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-yoguu-gut6080-ddo-1.jpg?v=1690163451130', 34, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (135, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-yoguu-gut6080-ddo-2.jpg?v=1690163451130', 34, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (136, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-yoguu-gut6080-ddo-6.jpg?v=1690163451130', 34, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (137, N'https://bizweb.dktcdn.net/100/438/408/products/stm6081-tra-17.jpg?v=1695613770323', 35, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (138, N'https://bizweb.dktcdn.net/100/438/408/products/stm6081-tra.jpg?v=1695626337187', 35, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (139, N'https://bizweb.dktcdn.net/100/438/408/products/stm6081-tra-11.jpg?v=1695626337187', 35, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (140, N'https://bizweb.dktcdn.net/100/438/408/products/stm6081-tra-sqm5003-ghi-2.jpg?v=1695626337187', 35, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (141, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-stm6087-xbd-5.jpg?v=1690163442310', 36, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (142, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-stm6087-xbd-1.jpg?v=1690163442310', 36, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (143, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-stm6087-xbd-7.jpg?v=1690163442310', 36, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (144, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-stm6087-xbd-8.jpg?v=1690163442310', 36, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (145, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6288-nav-4.jpg?v=1690163417873', 37, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (146, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6288-nav-6.jpg?v=1690163417873', 37, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (147, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6288-nav-1.jpg?v=1690163417873', 37, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (148, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6288-nav-7.jpg?v=1690163417873', 37, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (149, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6294-cam-6.jpg?v=1690163509037', 38, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (150, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6294-cam-1.jpg?v=1690163509037', 38, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (151, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6294-cam-5.jpg?v=1690163509037', 38, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (152, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6294-cam-2.jpg?v=1690163509037', 38, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (153, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6082-xla-sjn4004-nad-3-of-11-yody.jpg?v=1692606016533', 39, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (154, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6082-xla-sjn4004-nad-5-of-11-yody.jpg?v=1690182489430', 39, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (155, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6082-xla-sjn4004-nad-10-of-11-yody.jpg?v=1690182489430', 39, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (156, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6082-xla-sjn4004-nad-1-of-11-yody.jpg?v=1690182489430', 39, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (157, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6262-den-3.jpg?v=1690163422497', 40, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (158, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6262-den-5.jpg?v=1690163422497', 40, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (159, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6262-den-4.jpg?v=1690163422497', 40, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (160, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nu-tsn6262-den-6.jpg?v=1690163422497', 40, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (161, N'https://bizweb.dktcdn.net/100/438/408/products/atn6070-den-atn6080-tra-cvn6070-dcb-4-of-13.jpg?v=1696324821843', 41, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (162, N'https://bizweb.dktcdn.net/100/438/408/products/atn6070-den-atn6080-tra-cvn6070-dcb-7-of-13.jpg?v=1696324832083', 41, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (163, N'https://bizweb.dktcdn.net/100/438/408/products/atn6070-den-atn6080-tra-cvn6070-dcb-8-of-13.jpg?v=1696324833040', 41, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (164, N'https://bizweb.dktcdn.net/100/438/408/products/atn6070-den-atn6080-tra-cvn6070-dcb-3-of-13.jpg?v=1696324833040', 41, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (165, N'https://bizweb.dktcdn.net/100/438/408/products/atn6062-kdm-4-of-10.jpg?v=1696238648383', 42, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (166, N'https://bizweb.dktcdn.net/100/438/408/products/atn6062-kdm-7-of-10.jpg?v=1696238666557', 42, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (167, N'https://bizweb.dktcdn.net/100/438/408/products/atn6062-kdm-8-of-10.jpg?v=1696238667457', 42, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (168, N'https://bizweb.dktcdn.net/100/438/408/products/atn6062-kdm-qnn6006-tra-1-of-3.jpg?v=1696238670677', 42, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (169, N'https://bizweb.dktcdn.net/100/438/408/products/atk6050-trg-5.jpg?v=1696115205513', 43, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (170, N'https://bizweb.dktcdn.net/100/438/408/products/atk6050-trg-8.jpg?v=1696324384057', 43, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (171, N'https://bizweb.dktcdn.net/100/438/408/products/atk6050-trg-9.jpg?v=1696324384057', 43, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (172, N'https://bizweb.dktcdn.net/100/438/408/products/atk6050-trg-10.jpg?v=1696324384057', 43, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (173, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6084-cam-qsk6011-ghi-6-yody.jpg?v=1689903865840', 44, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (174, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6084-cam-qsk6011-ghi-10-yody.jpg?v=1689903881503', 44, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (175, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6084-cam-qsk6011-ghi-11-yody.jpg?v=1689903885550', 44, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (176, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6084-cam-qsk6011-ghi-4-yody.jpg?v=1689903891253', 44, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (177, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6102-tla-4-yody.jpg?v=1689904326270', 45, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (178, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6102-tla-5-yody.jpg?v=1689904353270', 45, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (179, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6102-tla-7-yody.jpg?v=1689904368253', 45, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (180, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-tre-em-tsk6102-tla-8-yody.jpg?v=1689904372580', 45, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (181, N'https://bizweb.dktcdn.net/100/438/408/products/akm4027-xah-qjm3077-xde-4.jpg?v=1688723499193', 46, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (182, N'https://bizweb.dktcdn.net/100/438/408/products/akm4027-xah-qjm3077-xde-1.jpg?v=1690163864163', 46, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (183, N'https://bizweb.dktcdn.net/100/438/408/products/akm4027-xah-qjm3077-xde-3.jpg?v=1690163864163', 46, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (184, N'https://bizweb.dktcdn.net/100/438/408/products/akm4027-xah-qjm3077-xde-8.jpg?v=1690163864163', 46, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (185, N'https://bizweb.dktcdn.net/100/438/408/products/akm5017-den-15-ao-khoac-nam.jpg?v=1690163634530', 47, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (186, N'https://bizweb.dktcdn.net/100/438/408/products/akm5017-den-5-ao-khoac-nam.jpg?v=1690163634530', 47, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (187, N'https://bizweb.dktcdn.net/100/438/408/products/akm5017-den-10-ao-khoac-nam.jpg?v=1690163634530', 47, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (188, N'https://bizweb.dktcdn.net/100/438/408/products/akm5017-den-12-ao-khoac-nam.jpg?v=1690163634530', 47, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (189, N'https://bizweb.dktcdn.net/100/438/408/products/phm5017-cam-5.jpg?v=1677142189040', 48, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (190, N'https://bizweb.dktcdn.net/100/438/408/products/phm5017-cam-9.jpg?v=1677142189040', 48, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (191, N'https://bizweb.dktcdn.net/100/438/408/products/phm5017-cam-3.jpg?v=1677142189040', 48, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (192, N'https://bizweb.dktcdn.net/100/438/408/products/phm5017-cam-6.jpg?v=1677142189040', 48, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (193, N'https://bizweb.dktcdn.net/100/438/408/products/phm5001-ghd-3.jpg?v=1677119319310', 49, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (194, N'https://bizweb.dktcdn.net/100/438/408/products/phm5001-ghd-7.jpg?v=1677119319313', 49, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (195, N'https://bizweb.dktcdn.net/100/438/408/products/phm5001-ghd-6.jpg?v=1677119319313', 49, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (196, N'https://bizweb.dktcdn.net/100/438/408/products/phm5001-ghd-8.jpg?v=1677119319313', 49, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (197, N'https://bizweb.dktcdn.net/100/438/408/products/akm5037-nta-3.jpg?v=1690163735137', 50, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (198, N'https://bizweb.dktcdn.net/100/438/408/products/akm5037-nta-2-73b101d1-ee7f-4559-b7b9-6434da19525c.jpg?v=1690163735137', 50, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (199, N'https://bizweb.dktcdn.net/100/438/408/products/akm5037-nta-1.jpg?v=1690163735137', 50, 11)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (200, N'https://bizweb.dktcdn.net/100/438/408/products/akm5037-nta-6.jpg?v=1690163735137', 50, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (201, N'https://bizweb.dktcdn.net/100/438/408/products/akm5041-cam-12.jpg?v=1693039332207', 51, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (202, N'https://bizweb.dktcdn.net/100/438/408/products/akm5041-cam-6-2baf101c-eb48-4323-bbf6-fc4b2f6d333e.jpg?v=1693039328490', 51, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (203, N'https://bizweb.dktcdn.net/100/438/408/products/akm5041-cam-7-657ea689-67f7-4a5d-8565-108e21b8b8ee.jpg?v=1693039328490', 51, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (204, N'https://bizweb.dktcdn.net/100/438/408/products/akm5041-cam-2.jpg?v=1693039328490', 51, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (205, N'https://bizweb.dktcdn.net/100/438/408/products/akn5040-vag-5.jpg?v=1681354798630', 52, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (206, N'https://bizweb.dktcdn.net/100/438/408/products/akn5040-vag-4-71de5e0b-599e-4ea0-8203-0f5ec759d9a5.jpg?v=1681355740983', 52, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (207, N'https://bizweb.dktcdn.net/100/438/408/products/akn5040-vag-6.jpg?v=1681355746377', 52, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (208, N'https://bizweb.dktcdn.net/100/438/408/products/akn5040-vag-8-53a07aa1-4b53-4a64-861d-1ad9543ed4a9.jpg?v=1681355752077', 52, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (209, N'https://bizweb.dktcdn.net/100/438/408/products/akn5006-reu-5.jpg?v=1690163654390', 53, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (210, N'https://bizweb.dktcdn.net/100/438/408/products/akn5006-reu-3.jpg?v=1690163654390', 53, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (211, N'https://bizweb.dktcdn.net/100/438/408/products/akn5006-reu-6.jpg?v=1690163654390', 53, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (212, N'https://bizweb.dktcdn.net/100/438/408/products/akn5006-reu-1.jpg?v=1690163654390', 53, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (213, N'https://bizweb.dktcdn.net/100/438/408/products/phn5000-vag-8.jpg?v=1673079457990', 54, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (214, N'https://bizweb.dktcdn.net/100/438/408/products/phn5000-vag-6.jpg?v=1673079474850', 54, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (215, N'https://bizweb.dktcdn.net/100/438/408/products/phn5000-vag-13.jpg?v=1673079474850', 54, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (216, N'https://bizweb.dktcdn.net/100/438/408/products/phn5000-vag-10.jpg?v=1673079474850', 54, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (217, N'https://bizweb.dktcdn.net/100/438/408/products/akn4024-nau-5.jpg?v=1690337555127', 55, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (218, N'https://bizweb.dktcdn.net/100/438/408/products/akn4024-nau-2.jpg?v=1690163863607', 55, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (219, N'https://bizweb.dktcdn.net/100/438/408/products/akn4024-nau-3.jpg?v=1690163863607', 55, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (220, N'https://bizweb.dktcdn.net/100/438/408/products/akn4024-nau-10.jpg?v=1690163863607', 55, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (221, N'https://bizweb.dktcdn.net/100/438/408/products/phn5036-dod-5.jpg?v=1686279519920', 56, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (222, N'https://bizweb.dktcdn.net/100/438/408/products/phn5036-dod-3.jpg?v=1686279519920', 56, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (223, N'https://bizweb.dktcdn.net/100/438/408/products/phn5036-dod-10.jpg?v=1686279519920', 56, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (224, N'https://bizweb.dktcdn.net/100/438/408/products/phn5036-dod-1-1.jpg?v=1686279519920', 56, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (225, N'https://bizweb.dktcdn.net/100/438/408/products/skn5008-tim-3.jpg?v=1690163628227', 57, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (226, N'https://bizweb.dktcdn.net/100/438/408/products/skn5008-tim-1.jpg?v=1690163628227', 57, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (227, N'https://bizweb.dktcdn.net/100/438/408/products/skn5008-tim-4.jpg?v=1690163628227', 57, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (228, N'https://bizweb.dktcdn.net/100/438/408/products/skn5008-tim-5.jpg?v=1690163628227', 57, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (229, N'https://bizweb.dktcdn.net/100/438/408/products/akk5019-hog-14.jpg?v=1688723410207', 58, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (230, N'https://bizweb.dktcdn.net/100/438/408/products/akk5019-hog-13.jpg?v=1690163736950', 58, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (231, N'https://bizweb.dktcdn.net/100/438/408/products/akk5019-hog-11.jpg?v=1690163736950', 58, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (232, N'https://bizweb.dktcdn.net/100/438/408/products/akk5019-hog-16.jpg?v=1690163736950', 58, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (233, N'https://bizweb.dktcdn.net/100/438/408/products/akk5021-cam-11.jpg?v=1690163745090', 59, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (234, N'https://bizweb.dktcdn.net/100/438/408/products/akk5021-cam-2.jpg?v=1690163745090', 59, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (235, N'https://bizweb.dktcdn.net/100/438/408/products/akk5021-cam-3.jpg?v=1690163745090', 59, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (236, N'https://bizweb.dktcdn.net/100/438/408/products/akk5021-cam-4.jpg?v=1690163745090', 59, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (237, N'https://bizweb.dktcdn.net/100/438/408/products/ao-khoac-tre-em-akk6030-dod-4.jpg?v=1695182753013', 60, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (238, N'https://bizweb.dktcdn.net/100/438/408/products/ao-khoac-tre-em-akk6030-dod-5.jpg?v=1696038056140', 60, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (239, N'https://bizweb.dktcdn.net/100/438/408/products/ao-khoac-tre-em-akk6030-dod-6.jpg?v=1696038056140', 60, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (240, N'https://bizweb.dktcdn.net/100/438/408/products/ao-khoac-tre-em-akk6030-dod-3.jpg?v=1696038056140', 60, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (241, N'https://bizweb.dktcdn.net/100/438/408/products/smm4073-tra-5.jpg?v=1690163848063', 61, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (242, N'https://bizweb.dktcdn.net/100/438/408/products/smm4073-tra-9.jpg?v=1690163848063', 61, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (243, N'https://bizweb.dktcdn.net/100/438/408/products/smm4073-tra-qam3190-gd2-4.jpg?v=1690163848063', 61, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (244, N'https://bizweb.dktcdn.net/100/438/408/products/smm4073-tra-7.jpg?v=1690163848063', 61, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (245, N'https://bizweb.dktcdn.net/100/438/408/products/smm3011-ghd-2.jpg?v=1688954178413', 62, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (246, N'https://bizweb.dktcdn.net/100/438/408/products/smm3011-ghd-7.jpg?v=1688954178413', 62, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (247, N'https://bizweb.dktcdn.net/100/438/408/products/smm3011-ghd-qam3012-xde.jpg?v=1688954178413', 62, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (248, N'https://bizweb.dktcdn.net/100/438/408/products/smm3011-ghd-3-25212e80-929f-4579-8e49-7dc1f168ac73.jpg?v=1688954178413', 62, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (249, N'https://bizweb.dktcdn.net/100/438/408/products/scm4033-tra-qam4009-den-4.jpg?v=1692606329307', 63, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (250, N'https://bizweb.dktcdn.net/100/438/408/products/scm4033-tra-qam4009-den-1.jpg?v=1690163837140', 63, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (251, N'https://bizweb.dktcdn.net/100/438/408/products/scm4033-tra-qam4009-den-2.jpg?v=1690163837140', 63, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (252, N'https://bizweb.dktcdn.net/100/438/408/products/scm4033-tra-qam4009-den-6.jpg?v=1690163837140', 63, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (253, N'https://bizweb.dktcdn.net/100/438/408/products/spm5005-den-ao-so-mi-nam-yody-1.jpg?v=1688723412400', 64, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (254, N'https://bizweb.dktcdn.net/100/438/408/products/spm5005-den-ao-so-mi-nam-yody-2.jpg?v=1690163742317', 64, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (255, N'https://bizweb.dktcdn.net/100/438/408/products/spm5005-den-ao-so-mi-nam-yody-3.jpg?v=1690163742317', 64, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (256, N'https://bizweb.dktcdn.net/100/438/408/products/spm5005-den-ao-so-mi-nam-yody-9.jpg?v=1690163742317', 64, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (257, N'https://bizweb.dktcdn.net/100/438/408/products/snm5005-xnh-3.jpg?v=1690163742067', 65, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (258, N'https://bizweb.dktcdn.net/100/438/408/products/snm5005-xnh-8.jpg?v=1690163742067', 65, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (259, N'https://bizweb.dktcdn.net/100/438/408/products/snm5005-xnh-7.jpg?v=1690163742067', 65, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (260, N'https://bizweb.dktcdn.net/100/438/408/products/snm5005-xnh-2.jpg?v=1690163742067', 65, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (261, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-scm6099-ghi-1.jpg?v=1688723268773', 66, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (262, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-scm6099-ghi-2.jpg?v=1690163404633', 66, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (263, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-scm6099-ghi-3.jpg?v=1690163404633', 66, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (264, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-scm6099-ghi-6.jpg?v=1690163404633', 66, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (265, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6081-kko-10.jpg?v=1690163450667', 67, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (266, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6081-kko-11.jpg?v=1690163450667', 67, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (267, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6081-kko-8.jpg?v=1690163450667', 67, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (268, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6081-kko-9.jpg?v=1690163450667', 67, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (269, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6019-kde-3.jpg?v=1690163451433', 68, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (270, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6019-kde-6.jpg?v=1690163451433', 68, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (271, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6019-kde-4.jpg?v=1690163451433', 68, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (272, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nam-smm6019-kde-7.jpg?v=1690163451433', 68, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (273, N'https://bizweb.dktcdn.net/100/438/408/products/smm5221-kva-4.jpg?v=1688723357663', 69, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (274, N'https://bizweb.dktcdn.net/100/438/408/products/smm5221-kva-6.jpg?v=1690163598847', 69, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (275, N'https://bizweb.dktcdn.net/100/438/408/products/smm5221-kva-7.jpg?v=1690163598847', 69, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (276, N'https://bizweb.dktcdn.net/100/438/408/products/smm5221-kva-qjm5033-xah-3.jpg?v=1690163598847', 69, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (277, N'https://bizweb.dktcdn.net/100/438/408/products/smm5207-btr-5.jpg?v=1690163599057', 70, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (278, N'https://bizweb.dktcdn.net/100/438/408/products/smm5207-btr-4.jpg?v=1690163599057', 70, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (279, N'https://bizweb.dktcdn.net/100/438/408/products/smm5207-btr-12.jpg?v=1690163599057', 70, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (280, N'https://bizweb.dktcdn.net/100/438/408/products/smm5207-btr-1.jpg?v=1690163599057', 70, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (281, N'https://bizweb.dktcdn.net/100/438/408/products/smn3007-xah-ao-so-mi-nu-yody-2-7307e529-0b4c-4b3b-a8f9-d1306b835d2a.jpg?v=1692606393540', 71, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (282, N'https://bizweb.dktcdn.net/100/438/408/products/smn3007-xah-ao-so-mi-nu-yody-6-faf93a45-0e34-4624-b188-763806820f62.jpg?v=1688723480630', 71, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (283, N'https://bizweb.dktcdn.net/100/438/408/products/smn3007-xah-ao-so-mi-nu-yody-1-ce274a96-977f-491d-abab-37cbfab2a796.jpg?v=1688723480630', 71, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (284, N'https://bizweb.dktcdn.net/100/438/408/products/smn3007-xah-ao-so-mi-nu-yody-4-e06f0333-974e-4152-8b24-d93003409ab7.jpg?v=1688723480630', 71, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (285, N'https://bizweb.dktcdn.net/100/438/408/products/scn5164-reu5.jpg?v=1690163773857', 72, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (286, N'https://bizweb.dktcdn.net/100/438/408/products/scn5164-reu0.jpg?v=1690163773860', 72, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (287, N'https://bizweb.dktcdn.net/100/438/408/products/scn5164-reu4.jpg?v=1690163773860', 72, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (288, N'https://bizweb.dktcdn.net/100/438/408/products/scn5164-reu1.jpg?v=1690163773860', 72, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (289, N'https://bizweb.dktcdn.net/100/438/408/products/smn6016-kdm-ao-so-mi-nu-3.jpg?v=1696904108167', 73, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (290, N'https://bizweb.dktcdn.net/100/438/408/products/smn6016-kdm-ao-so-mi-nu-1.jpg?v=1690163384980', 73, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (291, N'https://bizweb.dktcdn.net/100/438/408/products/smn6016-kdm-ao-so-mi-nu-2.jpg?v=1690163384980', 73, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (292, N'https://bizweb.dktcdn.net/100/438/408/products/smn6016-kdm-ao-so-mi-nu-4.jpg?v=1690163384980', 73, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (293, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-ke-nano-yody-smn6024-kla-6-6.jpg?v=1689903616733', 74, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (294, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-ke-nano-yody-smn6024-kla-6-8.jpg?v=1689903832410', 74, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (295, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-ke-nano-yody-smn6024-kla-6-7.jpg?v=1689903832410', 74, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (296, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-ke-nano-yody-smn6024-kla-6-4.jpg?v=1689903832410', 74, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (297, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-scn6064-xco-6.jpg?v=1692062171813', 75, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (298, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-scn6064-xco-4.jpg?v=1692062177817', 75, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (299, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-scn6064-xco-2.jpg?v=1692062179130', 75, 4)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (300, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-scn6064-xco-5.jpg?v=1692062180173', 75, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (301, N'https://bizweb.dktcdn.net/100/438/408/products/scn6010-xla-cvn3192-den-5.jpg?v=1690163397683', 76, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (302, N'https://bizweb.dktcdn.net/100/438/408/products/scn6010-xla-cvn3192-den-7.jpg?v=1690163397683', 76, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (303, N'https://bizweb.dktcdn.net/100/438/408/products/scn6010-xla-cvn3192-den-1.jpg?v=1690163397683', 76, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (304, N'https://bizweb.dktcdn.net/100/438/408/products/scn6010-xla-cvn3192-den-4.jpg?v=1690163397683', 76, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (305, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6036-vag-5.jpg?v=1690163401237', 77, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (306, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6036-vag-1.jpg?v=1690163401237', 77, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (307, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6036-vag-4.jpg?v=1690163401237', 77, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (308, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6036-vag-6.jpg?v=1690163401237', 77, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (309, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6070-tra-6.jpg?v=1696904284083', 78, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (310, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6070-tra-7.jpg?v=1690163401827', 78, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (311, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6070-tra-4.jpg?v=1690163401827', 78, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (312, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6070-tra-2.jpg?v=1690163401827', 78, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (313, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6014-vbo-qan6002-nad-4-yody.jpg?v=1689904748527', 79, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (314, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6014-vbo-qan6002-nad-5-yody.jpg?v=1689904753187', 79, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (315, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6014-vbo-qan6002-nad-6-yody.jpg?v=1689904757237', 79, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (316, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-smn6014-vbo-qan6002-nad-3-yody-a6cb9129-542c-4d3f-8a5b-7d8c84508ae2.jpg?v=1689904761157', 79, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (317, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-cam-qsn6014-den-2.jpg?v=1694751859220', 80, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (318, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-cam-qsn6014-den-11.jpg?v=1694751991530', 80, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (319, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-cam-qsn6014-den-6.jpg?v=1694751991530', 80, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (320, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-cam-qsn6014-den-15.jpg?v=1694751991530', 80, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (321, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-xla-cvn6064-kem-7.jpg?v=1694751991530', 81, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (322, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-xla-cvn6064-kem-9.jpg?v=1694751993277', 81, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (323, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-xla-cvn6064-kem-10.jpg?v=1694751994907', 81, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (324, N'https://bizweb.dktcdn.net/100/438/408/products/ao-so-mi-nu-yody-smn6126-xla-cvn6064-kem-1.jpg?v=1694751994907', 81, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (325, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn2.jpg?v=1684392667011', 82, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (326, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn2.jpg?v=1684392667011', 82, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (327, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn2.jpg?v=1684392667011', 82, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (328, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn2.jpg?v=1684392667011', 82, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (329, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn3.jpg?v=1684392693001', 83, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (330, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn3.jpg?v=1684392693001', 83, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (331, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn3.jpg?v=1684392693001', 83, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (332, N'https://bizweb.dktcdn.net/100/438/408/files/ao-so-mi-tre-em-yodyvn3.jpg?v=1684392693001', 83, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (333, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-atm6016-tra-1.jpg?v=1696315200867', 84, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (334, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-atm6016-tra-2.jpg?v=1696315337283', 84, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (335, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-atm6016-tra-3.jpg?v=1696315337283', 84, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (336, N'https://bizweb.dktcdn.net/100/438/408/products/ao-thun-nam-atm6016-tra-6.jpg?v=1696315337283', 84, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (337, N'https://bizweb.dktcdn.net/100/438/408/products/atm5109-dkt-6.jpg?v=1689651615643', 85, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (338, N'https://bizweb.dktcdn.net/100/438/408/products/atm5109-dkt-13.jpg?v=1666066483187', 85, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (339, N'https://bizweb.dktcdn.net/100/438/408/products/atm5109-dkt-9.jpg?v=1666066483187', 85, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (340, N'https://bizweb.dktcdn.net/100/438/408/products/atm5109-dkt-12.jpg?v=1666066483187', 85, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (341, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-tkc-5.jpg?v=1678352652220', 86, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (342, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-tkc-3.jpg?v=1678352652220', 86, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (343, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-tkc-6.jpg?v=1678352652220', 86, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (344, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-tkc-4.jpg?v=1678352652220', 86, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (345, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-thx-1.jpg?v=1678352652220', 87, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (346, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-thx-2.jpg?v=1678352652220', 87, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (347, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-thx-10.jpg?v=1678352652220', 87, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (348, N'https://bizweb.dktcdn.net/100/438/408/products/atm5009-thx-4.jpg?v=1678352652220', 87, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (349, N'https://bizweb.dktcdn.net/100/438/408/files/ao-ni-nu-yody-vn10.jpg?v=1673947151452', 88, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (350, N'https://bizweb.dktcdn.net/100/438/408/files/ao-ni-nu-yody-vn10.jpg?v=1673947151452', 88, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (351, N'https://bizweb.dktcdn.net/100/438/408/files/ao-ni-nu-yody-vn10.jpg?v=1673947151452', 88, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (352, N'https://bizweb.dktcdn.net/100/438/408/files/ao-ni-nu-yody-vn10.jpg?v=1673947151452', 88, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (353, N'https://bizweb.dktcdn.net/100/438/408/files/ao-sweater-nu-yody-vn4-jpeg.jpg?v=1673947154940', 89, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (354, N'https://bizweb.dktcdn.net/100/438/408/files/ao-sweater-nu-yody-vn4-jpeg.jpg?v=1673947154940', 89, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (355, N'https://bizweb.dktcdn.net/100/438/408/files/ao-sweater-nu-yody-vn4-jpeg.jpg?v=1673947154940', 89, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (356, N'https://bizweb.dktcdn.net/100/438/408/files/ao-sweater-nu-yody-vn4-jpeg.jpg?v=1673947154940', 89, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (357, N'https://bizweb.dktcdn.net/100/438/408/products/ao-len-ni-tre-em-hdk5263-xdu-5.jpg?v=1690163617267', 90, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (358, N'https://bizweb.dktcdn.net/100/438/408/products/ao-len-ni-tre-em-hdk5263-xdu-4.jpg?v=1690163617267', 90, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (359, N'https://bizweb.dktcdn.net/100/438/408/products/ao-len-ni-tre-em-hdk5263-xdu-6.jpg?v=1690163617267', 90, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (360, N'https://bizweb.dktcdn.net/100/438/408/products/ao-len-ni-tre-em-hdk5263-xdu-7.jpg?v=1690163617267', 90, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (361, N'https://bizweb.dktcdn.net/100/438/408/products/atk5066-dca-2.jpg?v=1690163643803', 91, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (362, N'https://bizweb.dktcdn.net/100/438/408/products/atk5066-dca-1.jpg?v=1690163643803', 91, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (363, N'https://bizweb.dktcdn.net/100/438/408/products/atk5066-dca-3.jpg?v=1690163643803', 91, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (364, N'https://bizweb.dktcdn.net/100/438/408/products/atk5066-dca-4.jpg?v=1690163643803', 91, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (365, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-cb1-5.jpg?v=1690163618633', 92, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (366, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-cb1-2.jpg?v=1690163618633', 92, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (367, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-cb1-11.jpg?v=1690163618633', 92, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (368, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-cb1-4.jpg?v=1690163618633', 92, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (369, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-den-3.jpg?v=1690163618633', 93, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (370, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-den-2.jpg?v=1690163618633', 93, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (371, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-den-8.jpg?v=1690163618633', 93, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (372, N'https://bizweb.dktcdn.net/100/438/408/products/hdk5215-den-6.jpg?v=1690163618633', 93, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (373, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn.jpg?v=1672197061357', 94, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (374, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn.jpg?v=1672197061357', 94, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (375, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn.jpg?v=1672197061357', 94, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (376, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn.jpg?v=1672197061357', 94, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (377, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn-2.jpg?v=1672197063517', 95, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (378, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn-2.jpg?v=1672197063517', 95, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (379, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn-2.jpg?v=1672197063517', 95, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (380, N'https://bizweb.dktcdn.net/100/438/408/files/ao-len-nam-yody-vn-2.jpg?v=1672197063517', 95, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (381, N'https://bizweb.dktcdn.net/100/438/408/products/aln6042-tra-cvn5168-trd-5.jpg?v=1694672162147', 96, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (382, N'https://bizweb.dktcdn.net/100/438/408/products/aln6042-tra-cvn5168-trd-8.jpg?v=1694672160483', 96, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (383, N'https://bizweb.dktcdn.net/100/438/408/products/aln6042-tra-cvn5168-trd-9.jpg?v=1694672160483', 96, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (384, N'https://bizweb.dktcdn.net/100/438/408/products/aln6042-tra-cvn5168-trd-10.jpg?v=1694672160483', 96, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (385, N'https://bizweb.dktcdn.net/100/438/408/products/aln6040-det-qjn3072-tra-15.jpg?v=1694162053903', 97, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (386, N'https://bizweb.dktcdn.net/100/438/408/products/aln6040-det-qjn3072-tra-16.jpg?v=1694162152643', 97, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (387, N'https://bizweb.dktcdn.net/100/438/408/products/aln6040-det-qjn3072-tra-1.jpg?v=1694162152643', 97, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (388, N'https://bizweb.dktcdn.net/100/438/408/products/aln6040-det-qjn3072-tra-3.jpg?v=1694162151173', 97, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (389, N'https://bizweb.dktcdn.net/100/438/408/products/aln6044-tkx-qan3072-bsa-4.jpg?v=1694675613980', 98, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (390, N'https://bizweb.dktcdn.net/100/438/408/products/aln6044-tkx-qan3072-bsa-2.jpg?v=1694675632860', 98, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (391, N'https://bizweb.dktcdn.net/100/438/408/products/aln6044-tkx-qan3072-bsa-6.jpg?v=1694675633913', 98, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (392, N'https://bizweb.dktcdn.net/100/438/408/products/aln6044-tkx-qan3072-bsa-7.jpg?v=1694675634680', 98, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (393, N'https://bizweb.dktcdn.net/100/438/408/products/alk6003-den-5.jpg?v=1696055175620', 99, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (394, N'https://bizweb.dktcdn.net/100/438/408/products/alk6003-den-2.jpg?v=1696817064383', 99, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (395, N'https://bizweb.dktcdn.net/100/438/408/products/alk6003-den-4.jpg?v=1696817064383', 99, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (396, N'https://bizweb.dktcdn.net/100/438/408/products/alk6003-den-6.jpg?v=1696817064383', 99, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (397, N'https://lzd-img-global.slatic.net/g/p/a56919249a441983061851f05e589633.jpg_80x80q80.jpg_.webp', 100, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (398, N'https://lzd-img-global.slatic.net/g/p/fe190ed7b345542f47c372c768a0aef4.jpg_80x80q80.jpg_.webp', 100, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (399, N'https://lzd-img-global.slatic.net/g/p/ceabd29febcce69fd9cec47c434498fc.jpg_80x80q80.jpg_.webp', 100, 11)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (400, N'https://lzd-img-global.slatic.net/g/p/8c632a584375e0c4a3dedc19ddf6af86.jpg_80x80q80.jpg_.webp', 100, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (401, N'https://salt.tikicdn.com/cache/w400/ts/product/ca/d0/3d/c2a326307285cdadaac5c0ddfa070cfd.jpg', 101, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (402, N'https://salt.tikicdn.com/cache/w400/ts/product/b6/50/17/1aaa8df2136f446db4ce1018f3f13905.jpg', 101, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (403, N'https://salt.tikicdn.com/cache/w400/ts/product/b6/50/17/1aaa8df2136f446db4ce1018f3f13905.jpg', 101, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (404, N'https://salt.tikicdn.com/cache/w400/ts/product/b6/50/17/1aaa8df2136f446db4ce1018f3f13905.jpg', 101, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (405, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xnh-1.jpg?v=1690163840763', 102, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (406, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xnh-2.jpg?v=1690163840763', 102, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (407, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xnh-3.jpg?v=1690163840763', 102, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (408, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xnh-qam4007-xnh-1.jpg?v=1690163840763', 102, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (409, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xmd-5.jpg?v=1690163840763', 103, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (410, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xmd-qam4007-xmd-2.jpg?v=1690163840763', 103, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (411, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xmd-qam4007-xmd-1.jpg?v=1690163840763', 103, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (412, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-xmd-6.jpg?v=1690163840763', 103, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (413, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-den-4.jpg?v=1690163840763', 104, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (414, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-den-5.jpg?v=1690163840763', 104, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (415, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-den-qam4007-den-3.jpg?v=1690163840763', 104, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (416, N'https://bizweb.dktcdn.net/100/438/408/products/vem4007-den-qam4007-den-1.jpg?v=1690163840763', 104, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (417, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-ong-suong-co-gian-thoang-mat-qjm3071-xah-6.jpg?v=1688723485657', 105, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (418, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-ong-suong-co-gian-thoang-mat-qjm3071-xah-1.jpg?v=1690163851697', 105, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (419, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-ong-suong-co-gian-thoang-mat-qjm3071-xah-4.jpg?v=1690163851697', 105, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (420, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-ong-suong-co-gian-thoang-mat-qjm3071-xah-5.jpg?v=1690163851697', 105, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (421, N'https://bizweb.dktcdn.net/100/438/408/products/qjm6005-xdm-2.jpg?v=1690163614137', 106, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (422, N'https://bizweb.dktcdn.net/100/438/408/products/qjm6005-xdm-1.jpg?v=1690163614137', 106, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (423, N'https://bizweb.dktcdn.net/100/438/408/products/qjm6005-xdm-3.jpg?v=1690163614137', 106, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (424, N'https://bizweb.dktcdn.net/100/438/408/products/qjm6005-xdm-4.jpg?v=1690163614137', 106, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (425, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-qjm6067-xah-1.jpg?v=1690163441093', 107, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (426, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-qjm6067-xah-6.jpg?v=1690163441093', 107, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (427, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-qjm6067-xah-6.jpg?v=1690163441093', 107, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (428, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nam-qjm6067-xah-5.jpg?v=1690163441093', 107, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (429, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5058-xah-3-9ebdaa8a-71f2-4223-82c3-64e175086a10.jpg?v=1696556256053', 108, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (430, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5058-xah-9-a3d88ba6-6d12-4b4f-8493-cd96b7fec074.jpg?v=1690163747667', 108, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (431, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5058-xah-11-8ba47d13-18b3-485e-9201-86a5b7b34958.jpg?v=1690163747667', 108, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (432, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5058-xah-5.jpg?v=1690163747667', 108, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (433, N'https://bizweb.dktcdn.net/100/438/408/products/qjn6034-xnh-6.jpg?v=1689039432167', 109, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (434, N'https://bizweb.dktcdn.net/100/438/408/products/qjn6034-xnh-4.jpg?v=1689039466247', 109, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (435, N'https://bizweb.dktcdn.net/100/438/408/products/qjn6034-xnh-7.jpg?v=1689039467503', 109, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (436, N'https://bizweb.dktcdn.net/100/438/408/products/qjn6034-xnh-9.jpg?v=1689039468473', 109, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (437, N'https://bizweb.dktcdn.net/100/438/408/products/qjn3076-dni-1.jpg?v=1690163851070', 110, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (438, N'https://bizweb.dktcdn.net/100/438/408/products/qjn3076-dni-5.jpg?v=1690163851070', 110, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (439, N'https://bizweb.dktcdn.net/100/438/408/products/qjn3076-dni-6.jpg?v=1690163851070', 110, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (440, N'https://bizweb.dktcdn.net/100/438/408/products/qjn3076-dni-3.jpg?v=1690163851070', 110, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (441, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5056-xnh-2.jpg?v=1696904391957', 111, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (442, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5056-xnh-5.jpg?v=1690163833810', 111, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (443, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5056-xnh-6.jpg?v=1690163833810', 111, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (444, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5056-xnh-scn6034-tra-16.jpg?v=1690163833810', 111, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (445, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nu-qjn6050-den-1.jpg?v=1690163450897', 112, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (446, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nu-qjn6050-den-3.jpg?v=1690163450897', 112, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (447, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nu-qjn6050-den-4.jpg?v=1690163450897', 112, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (448, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nu-qjn6050-den-6.jpg?v=1690163450897', 112, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (449, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5068-xdm-5.jpg?v=1690163629327', 113, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (450, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5068-xdm-4.jpg?v=1690163629327', 113, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (451, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5068-xdm-6.jpg?v=1690163629327', 113, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (452, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5068-xdm-7.jpg?v=1690163629327', 113, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (453, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-classic-theu-yody-qam6023-ghi-4.jpg?v=1690163514597', 114, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (454, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-classic-theu-yody-qam6023-ghi-7.jpg?v=1690163514597', 114, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (455, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-classic-theu-yody-qam6023-ghi-2.jpg?v=1690163514597', 114, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (456, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-classic-theu-yody-qam6023-ghi-6.jpg?v=1690163514597', 114, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (457, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-qam6049-tit-2-yodyvn.jpg?v=1690163443360', 115, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (458, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-qam6049-tit-4-yodyvn.jpg?v=1689933500507', 115, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (459, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-qam6049-tit-8-yodyvn.jpg?v=1689933504677', 115, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (460, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nam-qam6049-tit-apm6327-xly-4-yodyvn.jpg?v=1689933541483', 115, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (461, N'https://bizweb.dktcdn.net/100/438/408/products/qam6047-bee-apm6287-ncf-5.jpg?v=1690163399297', 116, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (462, N'https://bizweb.dktcdn.net/100/438/408/products/qam6047-bee-apm6287-ncf-6.jpg?v=1690163399297', 116, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (463, N'https://bizweb.dktcdn.net/100/438/408/products/qam6047-bee-apm6287-ncf-9.jpg?v=1690163399297', 116, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (464, N'https://bizweb.dktcdn.net/100/438/408/products/qam6047-bee-apm6287-ncf-3.jpg?v=1690163399297', 116, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (465, N'https://bizweb.dktcdn.net/100/438/408/products/qam6075-den-smm6087-xda-6.jpg?v=1696647487273', 117, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (466, N'https://bizweb.dktcdn.net/100/438/408/products/qam6075-den-smm6087-xda-1.jpg?v=1696647488520', 117, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (467, N'https://bizweb.dktcdn.net/100/438/408/products/qam6075-den-smm6087-xda-2.jpg?v=1696647488520', 117, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (468, N'https://bizweb.dktcdn.net/100/438/408/products/qam6075-den-smm6087-xda-7.jpg?v=1696647488520', 117, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (469, N'https://bizweb.dktcdn.net/100/438/408/products/qam6065-ghd-5.jpg?v=1696313997927', 118, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (470, N'https://bizweb.dktcdn.net/100/438/408/products/qam6065-ghd-8.jpg?v=1696313997927', 118, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (471, N'https://bizweb.dktcdn.net/100/438/408/products/qam6065-ghd-11.jpg?v=1696313997927', 118, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (472, N'https://bizweb.dktcdn.net/100/438/408/products/qam6065-ghd-1.jpg?v=1696313997927', 118, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (473, N'https://bizweb.dktcdn.net/100/438/408/products/qan5128-bee4.jpg?v=1696904199877', 119, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (474, N'https://bizweb.dktcdn.net/100/438/408/products/qan5128-bee1.jpg?v=1690163659027', 119, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (475, N'https://bizweb.dktcdn.net/100/438/408/products/qan5128-bee5.jpg?v=1690163659027', 119, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (476, N'https://bizweb.dktcdn.net/100/438/408/products/qan5128-bee6.jpg?v=1690163659027', 119, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (477, N'https://bizweb.dktcdn.net/100/438/408/products/qan3007-den-3.jpg?v=1648448962127', 120, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (478, N'https://bizweb.dktcdn.net/100/438/408/products/qan3007-den-3.jpg?v=1648448962127', 120, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (479, N'https://bizweb.dktcdn.net/100/438/408/products/qan3007-den-atn4350-hog.jpg?v=1690163837387', 120, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (480, N'https://bizweb.dktcdn.net/100/438/408/products/qan3007-den-5.jpg?v=1690163837387', 120, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (481, N'https://bizweb.dktcdn.net/100/438/408/products/qan5134-tit06.jpg?v=1690163838587', 121, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (482, N'https://bizweb.dktcdn.net/100/438/408/products/qan5134-tit05.jpg?v=1692606330860', 121, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (483, N'https://bizweb.dktcdn.net/100/438/408/products/qan5134-tit01.jpg?v=1690163838587', 121, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (484, N'https://bizweb.dktcdn.net/100/438/408/products/qan5134-tit03.jpg?v=1690163838587', 121, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (485, N'https://bizweb.dktcdn.net/100/438/408/products/qan5178-den-5.jpg?v=1690163743557', 122, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (486, N'https://bizweb.dktcdn.net/100/438/408/products/qan5178-den-3.jpg?v=1692606283357', 122, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (487, N'https://bizweb.dktcdn.net/100/438/408/products/qan5178-den-6.jpg?v=1690163743557', 122, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (488, N'https://bizweb.dktcdn.net/100/438/408/products/qan5178-den-7.jpg?v=1690163743557', 122, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (489, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nu-yody-qan6220-ghi-4.jpg?v=1695285378787', 123, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (490, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nu-yody-qan6220-ghi-6.jpg?v=1695285378787', 123, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (491, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nu-yody-qan6220-ghi-7.jpg?v=1695285378787', 123, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (492, N'https://bizweb.dktcdn.net/100/438/408/products/quan-au-nu-yody-qan6220-ghi-2.jpg?v=1695285378787', 123, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (493, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6007-xth-03.jpg?v=1690163627813', 124, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (494, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6007-xth-01.jpg?v=1690163627813', 124, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (495, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6007-xth-02.jpg?v=1690163627813', 124, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (496, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6007-xth-08.jpg?v=1690163627813', 124, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (497, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6005-xam-16.jpg?v=1690163629840', 125, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (498, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6005-xam-20.jpg?v=1690163629840', 125, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (499, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6005-xam-22.jpg?v=1690163629840', 125, 10)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (500, N'https://bizweb.dktcdn.net/100/438/408/products/qkm6005-xam-15.jpg?v=1690163629840', 125, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (501, N'https://bizweb.dktcdn.net/100/438/408/products/qkm5027-den-20.jpg?v=1690163648903', 126, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (502, N'https://bizweb.dktcdn.net/100/438/408/products/qkm5027-den-8.jpg?v=1690163648903', 126, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (503, N'https://bizweb.dktcdn.net/100/438/408/products/qkm5027-den-2.jpg?v=1690163648903', 126, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (504, N'https://bizweb.dktcdn.net/100/438/408/products/qkm5027-den-18.jpg?v=1690163648903', 126, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (505, N'https://bizweb.dktcdn.net/100/438/408/products/quan-kaki-nu-lung-cao-ong-om-co-gian-nhe-qjn3072-den-yodyvn-5.jpg?v=1690163851410', 127, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (506, N'https://bizweb.dktcdn.net/100/438/408/products/quan-kaki-nu-lung-cao-ong-om-co-gian-nhe-qjn3072-den-yodyvn-2.jpg?v=1690163851410', 127, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (507, N'https://bizweb.dktcdn.net/100/438/408/products/quan-kaki-nu-lung-cao-ong-om-co-gian-nhe-qjn3072-den-yodyvn-3.jpg?v=1690163851410', 127, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (508, N'https://bizweb.dktcdn.net/100/438/408/products/quan-kaki-nu-lung-cao-ong-om-co-gian-nhe-qjn3072-den-yodyvn-4.jpg?v=1690163851410', 127, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (509, N'https://bizweb.dktcdn.net/100/438/408/products/qsm3026-den-2.png?v=1688723478403', 128, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (510, N'https://bizweb.dktcdn.net/100/438/408/products/qsm3026-den-1.jpg?v=1690163845257', 128, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (511, N'https://bizweb.dktcdn.net/100/438/408/products/qsm3026-den-3.jpg?v=1690163845257', 128, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (512, N'https://bizweb.dktcdn.net/100/438/408/products/qsm3026-den-4.jpg?v=1690163845257', 128, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (513, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5047-ghi-5.jpg?v=1690163784487', 129, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (514, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5047-ghi-1.jpg?v=1690163784487', 129, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (515, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5047-ghi-2.jpg?v=1690163784487', 129, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (516, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5047-ghi-3.jpg?v=1690163784487', 129, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (517, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5057-xnh-4.jpg?v=1690163784147', 130, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (518, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5057-xnh-2.jpg?v=1690163784147', 130, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (519, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5057-xnh-3.jpg?v=1690163784147', 130, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (520, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5057-xnh-5.jpg?v=1690163784147', 130, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (521, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5019-xda0.jpg?v=1690163779387', 131, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (522, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5019-xda1.jpg?v=1690163779387', 131, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (523, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5019-xda2.jpg?v=1690163779387', 131, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (524, N'https://bizweb.dktcdn.net/100/438/408/products/qsm5019-xda3.jpg?v=1690163779387', 131, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (525, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5005-ghi-2-jpeg.jpg?v=1690163778277', 132, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (526, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5005-ghi-5-jpeg.jpg?v=1690163778277', 132, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (527, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5005-ghi-6-jpeg.jpg?v=1690163778277', 132, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (528, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5005-ghi-8-jpeg.jpg?v=1690163778277', 132, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (529, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5013-den-stm6079-tit-8.jpg?v=1690163777980', 133, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (530, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5013-den-stm6079-tit-7.jpg?v=1690163777980', 133, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (531, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5013-den-stm6079-tit-10.jpg?v=1690163777980', 133, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (532, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5013-den-stm6079-tit-13.jpg?v=1690163777980', 133, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (533, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nam-sqm5015-ghi-5-1.jpg?v=1690163777727', 134, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (534, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nam-sqm5015-ghi-5-7.jpg?v=1690163777727', 134, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (535, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nam-sqm5015-ghi-5-3.jpg?v=1690163777727', 134, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (536, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nam-sqm5015-ghi-5-6.jpg?v=1690163777727', 134, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (537, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5021-den-3.jpg?v=1690163777447', 135, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (538, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5021-den-1.jpg?v=1690163777447', 135, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (539, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5021-den-2.jpg?v=1690163777447', 135, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (540, N'https://bizweb.dktcdn.net/100/438/408/products/sqm5021-den-5.jpg?v=1690163777447', 135, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (541, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4022-kem-4.jpg?v=1690163845993', 136, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (542, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4022-kem-1.jpg?v=1690163845993', 136, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (543, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4022-kem-2.jpg?v=1690163845993', 136, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (544, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4022-kem-3.jpg?v=1690163845993', 136, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (545, N'https://bizweb.dktcdn.net/100/438/408/products/sjn3052-xtr-2.jpg?v=1692606392773', 137, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (546, N'https://bizweb.dktcdn.net/100/438/408/products/sjn3052-xtr-6.jpg?v=1690163846617', 137, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (547, N'https://bizweb.dktcdn.net/100/438/408/products/sjn3052-xtr-8.jpg?v=1690163846617', 137, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (548, N'https://bizweb.dktcdn.net/100/438/408/products/sjn3052-xtr-4.jpg?v=1690163846617', 137, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (549, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-jeans-nu-sjn4020-xah-2-yodyvn.jpg?v=1690163539780', 138, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (550, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-jeans-nu-sjn4020-xah-5-yodyvn.jpg?v=1690163539780', 138, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (551, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-jeans-nu-sjn4020-xah-1-yodyvn.jpg?v=1690163539780', 138, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (552, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-jeans-nu-sjn4020-xah-3-yodyvn.jpg?v=1690163539780', 138, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (553, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4004-den-10.jpg?v=1690163846270', 139, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (554, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4004-den-2-ec193f0a-017c-4cc9-8b74-4823b024741a.jpg?v=1690163846270', 139, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (555, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4004-den-12.jpg?v=1690163846270', 139, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (556, N'https://bizweb.dktcdn.net/100/438/408/products/sjn4004-den-1-34f83f38-edef-4115-88ba-5535277f573d.jpg?v=1690163846270', 139, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (557, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nu-sjn6004-xnh-5.jpg?v=1690163498143', 140, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (558, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nu-sjn6004-xnh-6.jpg?v=1690163498143', 140, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (559, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nu-sjn6004-xnh-1.jpg?v=1690163498143', 140, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (560, N'https://bizweb.dktcdn.net/100/438/408/products/quan-short-nu-sjn6004-xnh-4.jpg?v=1690163498143', 140, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (561, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6021-nav-7.jpg?v=1690163488973', 141, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (562, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6021-nav-8.jpg?v=1690163488973', 141, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (563, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6021-nav-9.jpg?v=1690163488973', 141, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (564, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6021-nav-tsk6350-nav-7.jpg?v=1690163488973', 141, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (565, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6013-xdm-9-1.jpg?v=1680936353220', 142, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (566, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6013-xdm-11-1.jpg?v=1680936419317', 142, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (567, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6013-xdm-13-1.jpg?v=1680936424120', 142, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (568, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6013-xdm-tsk6320-vag-2-1.jpg?v=1680936429150', 142, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (569, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6015-den-2.jpg?v=1690163494553', 143, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (570, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6015-den-1.jpg?v=1690163494553', 143, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (571, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6015-den-5.jpg?v=1690163494553', 143, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (572, N'https://bizweb.dktcdn.net/100/438/408/products/qsk6015-den-4.jpg?v=1690163494553', 143, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (573, N'https://bizweb.dktcdn.net/100/438/408/products/sooc-kid-logo-yody-kid-qsk6017-reu-6-yodyvn.jpg?v=1690163524860', 144, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (574, N'https://bizweb.dktcdn.net/100/438/408/products/sooc-kid-logo-yody-kid-qsk6017-reu-4-yodyvn.jpg?v=1690163524860', 144, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (575, N'https://bizweb.dktcdn.net/100/438/408/products/sooc-kid-logo-yody-kid-qsk6017-reu-1-yodyvn.jpg?v=1690163524860', 144, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (576, N'https://bizweb.dktcdn.net/100/438/408/products/sooc-kid-logo-yody-kid-qsk6017-reu-2-yodyvn.jpg?v=1690163524860', 144, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (577, N'https://bizweb.dktcdn.net/100/438/408/products/snk5076-xhc1.jpg?v=1690163759490', 145, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (578, N'https://bizweb.dktcdn.net/100/438/408/products/snk5076-xhc4.jpg?v=1690163759490', 145, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (579, N'https://bizweb.dktcdn.net/100/438/408/products/snk5076-xhc3.jpg?v=1690163759490', 145, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (580, N'https://bizweb.dktcdn.net/100/438/408/products/snk5076-xhc7.jpg?v=1690163759490', 145, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (581, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5018-tpa-3.jpg?v=1690163643600', 146, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (582, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5018-tpa-6.jpg?v=1669887745487', 146, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (583, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5018-tpa-7.jpg?v=1690163643600', 146, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (584, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5018-tpa-2.jpg?v=1690163643600', 146, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (585, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5020-tan-3.jpg?v=1690163651277', 147, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (586, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5020-tan-1.jpg?v=1690163651277', 147, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (587, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5020-tan-4.jpg?v=1690163651277', 147, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (588, N'https://bizweb.dktcdn.net/100/438/408/products/qlk5020-tan-5.jpg?v=1690163651277', 147, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (589, N'https://bizweb.dktcdn.net/100/438/408/products/quan-ni-tre-em-qlk5016-dod-4-yodyvn.jpg?v=1690163651483', 148, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (590, N'https://bizweb.dktcdn.net/100/438/408/products/quan-ni-tre-em-qlk5016-dod-5-yodyvn.jpg?v=1675313427223', 148, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (591, N'https://bizweb.dktcdn.net/100/438/408/products/quan-ni-tre-em-qlk5016-dod-6-yodyvn.jpg?v=1690163651483', 148, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (592, N'https://bizweb.dktcdn.net/100/438/408/products/quan-ni-tre-em-qlk5016-dod-1-yodyvn.jpg?v=1690163651483', 148, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (593, N'https://bizweb.dktcdn.net/100/438/408/products/qnk6052-nav-3.jpg?v=1696326016703', 149, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (594, N'https://bizweb.dktcdn.net/100/438/408/products/qnk6052-nav-4.jpg?v=1696326031340', 149, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (595, N'https://bizweb.dktcdn.net/100/438/408/products/qnk6052-nav-1.jpg?v=1696326020070', 149, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (596, N'https://bizweb.dktcdn.net/100/438/408/products/qnk6052-nav-5.jpg?v=1696326009653', 149, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (597, N'https://bizweb.dktcdn.net/100/438/408/products/qnk5011-den-10.jpg?v=1690163629110', 150, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (598, N'https://bizweb.dktcdn.net/100/438/408/products/qnk5011-den.jpg?v=1690163629110', 150, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (599, N'https://bizweb.dktcdn.net/100/438/408/products/qnk5011-den-17.jpg?v=1690163629110', 150, 9)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (600, N'https://bizweb.dktcdn.net/100/438/408/products/qnk5011-den-14.jpg?v=1690163629110', 150, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (601, N'https://bizweb.dktcdn.net/100/438/408/products/blm5007-trg10.jpg?v=1688723430883', 151, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (602, N'https://bizweb.dktcdn.net/100/438/408/products/blm5007-trg01.jpg?v=1688723430883', 151, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (603, N'https://bizweb.dktcdn.net/100/438/408/products/blm5007-trg11.jpg?v=1688723430883', 151, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (604, N'https://bizweb.dktcdn.net/100/438/408/products/blm5007-trg03.jpg?v=1688723430883', 151, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (605, N'https://bizweb.dktcdn.net/100/438/408/products/blm3001-tra-qsm3007-xda-2-1.jpg?v=1690163845103', 152, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (606, N'https://bizweb.dktcdn.net/100/438/408/products/ao-ba-lo-nam-yody-blm3001-tra-8.jpg?v=1649082598757', 152, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (607, N'https://bizweb.dktcdn.net/100/438/408/products/blm3001-tra-qsm3007-xda-1.png?v=1690163845103', 152, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (608, N'https://bizweb.dktcdn.net/100/438/408/products/ao-ba-lo-nam-yody-blm3001-tra-9.jpg?v=1690163845103', 152, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (609, N'https://bizweb.dktcdn.net/100/438/408/products/atn5100-cam-1.jpg?v=1665192218357', 153, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (610, N'https://bizweb.dktcdn.net/100/438/408/products/atn5100-cam-1.jpg?v=1665192218357', 153, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (611, N'https://bizweb.dktcdn.net/100/438/408/products/atn5100-cam-6.jpg?v=1665192218357', 153, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (612, N'https://bizweb.dktcdn.net/100/438/408/products/atn5100-cam-2.jpg?v=1665192218357', 153, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (613, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-boxer-det-lien-mem-mai-qcm6003-xxm-2-yodyvn.jpg?v=1690163528087', 154, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (614, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-boxer-det-lien-mem-mai-qcm6003-xxm-5-yodyvn.jpg?v=1690163528087', 154, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (615, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-boxer-det-lien-mem-mai-qcm6003-xxm-3-yodyvn.jpg?v=1690163528087', 154, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (616, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-boxer-det-lien-mem-mai-qcm6003-xxm-6-yodyvn.jpg?v=1690163528087', 154, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (617, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-qcm6005-den-1.jpg?v=1690163528313', 155, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (618, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-qcm6005-den-3.jpg?v=1690163528313', 155, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (619, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-qcm6005-den-2.jpg?v=1690163528313', 155, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (620, N'https://bizweb.dktcdn.net/100/438/408/products/quan-lot-nam-qcm6005-den-4.jpg?v=1690163528313', 155, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (621, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-thun-tam-yody-bln6036-cam-5.jpg?v=1690163379117', 156, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (622, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-thun-tam-yody-bln6036-cam-4.jpg?v=1689902919037', 156, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (623, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-thun-tam-yody-bln6036-cam-1.jpg?v=1690163379117', 156, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (624, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nu-thun-tam-yody-bln6036-cam-9.jpg?v=1690163379117', 156, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (625, N'https://bizweb.dktcdn.net/100/438/408/products/bln5060-tra-10-plus-qjn5092-xah-4.jpg?v=1690163738763', 157, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (626, N'https://bizweb.dktcdn.net/100/438/408/products/bln5060-tra-10-plus-qjn5092-xah-8.jpg?v=1690163738763', 157, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (627, N'https://bizweb.dktcdn.net/100/438/408/products/bln5060-tra-10-plus-qjn5092-xah-6.jpg?v=1690163738763', 157, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (628, N'https://bizweb.dktcdn.net/100/438/408/products/bln5060-tra-10-plus-qjn5092-xah-1.jpg?v=1690163738763', 157, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (629, N'https://bizweb.dktcdn.net/100/438/408/products/bln6030-xla-sjn5040-dek-13-ao-ba-lo-nu-yodyvn.jpg?v=1688954163667', 158, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (630, N'https://bizweb.dktcdn.net/100/438/408/products/bln6030-xla-sjn5040-dek-9-ao-ba-lo-nu-yodyvn.jpg?v=1681107384843', 158, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (631, N'https://bizweb.dktcdn.net/100/438/408/products/bln6030-xla-sjn5040-dek-15-ao-ba-lo-nu-yodyvn.jpg?v=1681107850770', 158, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (632, N'https://bizweb.dktcdn.net/100/438/408/products/bln6030-xla-sjn5040-dek-14-ao-ba-lo-nu-yodyvn.jpg?v=1681107861367', 158, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (633, N'https://bizweb.dktcdn.net/100/438/408/products/bln5048-den-plus-qjn5098-xah-6.jpg?v=1690163660683', 159, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (634, N'https://bizweb.dktcdn.net/100/438/408/products/bln5048-den-6.jpg?v=1690163660683', 159, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (635, N'https://bizweb.dktcdn.net/100/438/408/products/bln5048-den-10.jpg?v=1690163660683', 159, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (636, N'https://bizweb.dktcdn.net/100/438/408/products/bln5048-den-plus-qjn5098-xah-10.jpg?v=1690163660683', 159, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (637, N'https://bizweb.dktcdn.net/100/438/408/products/bln5034-cba-6.jpg?v=1690163745690', 160, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (638, N'https://bizweb.dktcdn.net/100/438/408/products/bln5034-cba-9.jpg?v=1690163745690', 160, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (639, N'https://bizweb.dktcdn.net/100/438/408/products/bln5034-cba-8.jpg?v=1690163745690', 160, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (640, N'https://bizweb.dktcdn.net/100/438/408/products/bln5034-cba-13.jpg?v=1690163745690', 160, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (641, N'https://bizweb.dktcdn.net/100/438/408/products/qcn6010-dbg-12.jpg?v=1692067926720', 161, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (642, N'https://bizweb.dktcdn.net/100/438/408/products/qcn6010-dbg-1.jpg?v=1692068287397', 161, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (643, N'https://bizweb.dktcdn.net/100/438/408/products/qcn6010-dbg-11.jpg?v=1692068288650', 161, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (644, N'https://bizweb.dktcdn.net/100/438/408/products/qcn6010-dbg-13.jpg?v=1692068289840', 161, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (645, N'https://bizweb.dktcdn.net/100/438/408/products/quan-chip-nu-co-ban-sieu-mem-muot-yody-qcn6006-hog-3.jpg?v=1689903221703', 162, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (646, N'https://bizweb.dktcdn.net/100/438/408/products/quan-chip-nu-co-ban-sieu-mem-muot-yody-qcn6006-hog-1.jpg?v=1689903226803', 162, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (647, N'https://bizweb.dktcdn.net/100/438/408/products/quan-chip-nu-co-ban-sieu-mem-muot-yody-qcn6006-hog-2.jpg?v=1689903231903', 162, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (648, N'https://bizweb.dktcdn.net/100/438/408/products/qcn6010-dbh-17.jpg?v=1692068291760', 162, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (649, N'https://bizweb.dktcdn.net/100/438/408/products/tlm6073-nau-that-lung-nam-3.jpg?v=1688182599100', 163, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (650, N'https://bizweb.dktcdn.net/100/438/408/products/tlm6073-nau-that-lung-nam-1.jpg?v=1688182608560', 163, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (651, N'https://bizweb.dktcdn.net/100/438/408/products/tlm6073-nau-that-lung-nam-4.jpg?v=1688182611073', 163, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (652, N'https://bizweb.dktcdn.net/100/438/408/products/tlm6073-nau-that-lung-nam-2.jpg?v=1688182609900', 163, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (653, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6071-den-2.jpg?v=1692605995417', 164, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (654, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6071-den-2.jpg?v=1692605995417', 164, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (655, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6071-den-1.jpg?v=1692605995417', 164, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (656, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6071-den-4.jpg?v=1692605995417', 164, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (657, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6069-den-5.jpg?v=1692605995573', 165, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (658, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6069-den-6.jpg?v=1692605995573', 165, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (659, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6069-den-7.jpg?v=1692605995573', 165, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (660, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-tlm6069-den-4.jpg?v=1692605995573', 165, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (661, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-da-bo-mat-gingham-yody-tlm6081-den-2.jpg?v=1692605995730', 166, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (662, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-da-bo-mat-gingham-yody-tlm6081-den-3.jpg?v=1692605995730', 166, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (663, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-da-bo-mat-gingham-yody-tlm6081-den-5.jpg?v=1692605995730', 166, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (664, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-da-bo-mat-gingham-yody-tlm6081-den-4.jpg?v=1692605995730', 166, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (665, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-mat-van-da-ca-sau-yody-tlm6067-nau-2.jpg?v=1692605995893', 167, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (666, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-mat-van-da-ca-sau-yody-tlm6067-nau-3.jpg?v=1692605995893', 167, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (667, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-mat-van-da-ca-sau-yody-tlm6067-nau-5.jpg?v=1692605995893', 167, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (668, N'https://bizweb.dktcdn.net/100/438/408/products/that-lung-nam-mat-van-da-ca-sau-yody-tlm6067-nau-4.jpg?v=1692605995893', 167, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (669, N'https://bizweb.dktcdn.net/100/438/408/products/tlm5055-den-1.jpg?v=1669103118400', 168, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (670, N'https://bizweb.dktcdn.net/100/438/408/products/tlm5055-den-3.jpg?v=1669103118400', 168, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (671, N'https://bizweb.dktcdn.net/100/438/408/products/tlm5055-den-2.jpg?v=1669103118400', 168, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (672, N'https://bizweb.dktcdn.net/100/438/408/products/tlm5055-den-3.jpg?v=1669103118400', 168, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (673, N'https://bizweb.dktcdn.net/100/438/408/products/gin6008-bee-2.jpg?v=1690163430623', 169, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (674, N'https://bizweb.dktcdn.net/100/438/408/products/gin6008-bee-3.jpg?v=1683534788920', 169, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (675, N'https://bizweb.dktcdn.net/100/438/408/products/gin6008-bee-4.jpg?v=1683534788920', 169, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (676, N'https://bizweb.dktcdn.net/100/438/408/products/gin6008-bee-1.jpg?v=1683534788920', 169, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (677, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin6002-cam-4.jpg?v=1683534396523', 170, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (678, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin6002-cam-5.jpg?v=1683534427717', 170, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (679, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin6002-cam-1.jpg?v=1683534427717', 170, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (680, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin6002-cam-3.jpg?v=1683534427717', 170, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (681, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin5032-den-2.jpg?v=1680774964200', 171, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (682, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin5032-den-3.jpg?v=1686536600773', 171, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (683, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin5032-den-1.jpg?v=1686536600773', 171, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (684, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nu-gin5032-den-4.jpg?v=1686536600773', 171, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (685, N'https://bizweb.dktcdn.net/100/438/408/products/gin5038-bee-2.jpg?v=1681352832833', 172, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (686, N'https://bizweb.dktcdn.net/100/438/408/products/gin5038-bee-3.jpg?v=1681352860667', 172, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (687, N'https://bizweb.dktcdn.net/100/438/408/products/gin5038-bee-4.jpg?v=1681352860667', 172, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (688, N'https://bizweb.dktcdn.net/100/438/408/products/gin5038-bee-5.jpg?v=1681352860667', 172, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (689, N'https://bizweb.dktcdn.net/100/438/408/products/sandal-nu-gin5012-tra-4-yodyvn.jpg?v=1666949909187', 173, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (690, N'https://bizweb.dktcdn.net/100/438/408/products/sandal-nu-gin5012-tra-22-yodyvn.jpg?v=1666949909187', 173, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (691, N'https://bizweb.dktcdn.net/100/438/408/products/sandal-nu-gin5012-tra-23-yodyvn.jpg?v=1666949909187', 173, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (692, N'https://bizweb.dktcdn.net/100/438/408/products/sandal-nu-gin5012-tra-26-yodyvn.jpg?v=1666949909187', 173, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (693, N'https://bizweb.dktcdn.net/100/438/408/products/gim5015-den-4-9df6d95d-7ed2-4263-a418-464a3bcfc73c.jpg?v=1664958621100', 174, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (694, N'https://bizweb.dktcdn.net/100/438/408/products/gim5015-den-1-3da6f2bf-91e9-43b5-942f-247419f6961c.jpg?v=1669888048530', 174, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (695, N'https://bizweb.dktcdn.net/100/438/408/products/gim5015-den-2-3d6a07f2-9bf0-4a00-9a4e-55a3b6c6c480.jpg?v=1664958621100', 174, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (696, N'https://bizweb.dktcdn.net/100/438/408/products/gim5015-den-6-8e1ac90e-e34a-4f0f-8a95-cbfd62adbfc0.jpg?v=1664958621100', 174, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (697, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-gim5023-den-1-yodyvn.jpg?v=1686810814280', 175, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (698, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-gim5023-den-10-yodyvn.jpg?v=1686810852197', 175, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (699, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-gim5023-den-7-yodyvn.jpg?v=1686811007777', 175, 9)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (700, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-gim5023-den-3-yodyvn.jpg?v=1686810852197', 175, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (701, N'https://bizweb.dktcdn.net/100/438/408/products/gim5021-nau-2.jpg?v=1683535743917', 176, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (702, N'https://bizweb.dktcdn.net/100/438/408/products/gim5021-nau-3.jpg?v=1683535821837', 176, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (703, N'https://bizweb.dktcdn.net/100/438/408/products/gim5021-nau-4.jpg?v=1683535805280', 176, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (704, N'https://bizweb.dktcdn.net/100/438/408/products/gim5021-nau-1.jpg?v=1683535805280', 176, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (705, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-sym6003-trg-5.jpg?v=1686117721180', 177, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (706, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-sym6003-trg-4.jpg?v=1686117782320', 177, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (707, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-sym6003-trg-1.jpg?v=1686117782320', 177, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (708, N'https://bizweb.dktcdn.net/100/438/408/products/giay-nam-sym6003-trg-3.jpg?v=1686117782320', 177, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (709, N'https://bizweb.dktcdn.net/100/438/408/products/gim5041-nau02.jpg?v=1692606220087', 178, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (710, N'https://bizweb.dktcdn.net/100/438/408/products/gim5041-nau01.jpg?v=1685409488193', 178, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (711, N'https://bizweb.dktcdn.net/100/438/408/products/gim5041-nau03.jpg?v=1685409488193', 178, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (712, N'https://bizweb.dktcdn.net/100/438/408/products/gim5041-nau04.jpg?v=1685409488193', 178, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (713, N'https://bizweb.dktcdn.net/100/438/408/products/tui-nu-canvas-nice-humen-tun6012-dn1-3.jpg?v=1678681183530', 179, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (714, N'https://bizweb.dktcdn.net/100/438/408/products/tui-nu-canvas-nice-humen-tun6012-dn1-3.jpg?v=1678681183530', 179, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (715, N'https://bizweb.dktcdn.net/100/438/408/products/tui-nu-canvas-nice-humen-tun6012-dn1-6.jpg?v=1678681183530', 179, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (716, N'https://bizweb.dktcdn.net/100/438/408/products/tui-nu-canvas-tun6012-dn1.jpg?v=1678681183530', 179, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (717, N'https://bizweb.dktcdn.net/100/438/408/products/tun6004-bee-2.jpg?v=1678259855947', 180, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (718, N'https://bizweb.dktcdn.net/100/438/408/products/tun6004-bee-7.jpg?v=1678259855947', 180, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (719, N'https://bizweb.dktcdn.net/100/438/408/products/tun6004-bee-3.jpg?v=1678259855947', 180, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (720, N'https://bizweb.dktcdn.net/100/438/408/products/tun6004-bee-6.jpg?v=1678259855947', 180, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (721, N'https://bizweb.dktcdn.net/100/438/408/products/tui-xach-yodyvn-tun6002-dn1-2.jpg?v=1680935630537', 181, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (722, N'https://bizweb.dktcdn.net/100/438/408/products/tui-xach-yodyvn-tun6002-dn1-6.jpg?v=1680935673753', 181, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (723, N'https://bizweb.dktcdn.net/100/438/408/products/tui-xach-yodyvn-tun6002-dn1-4.jpg?v=1680935681307', 181, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (724, N'https://bizweb.dktcdn.net/100/438/408/products/tui-xach-yodyvn-tun6002-dn1-3.jpg?v=1680935677433', 181, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (725, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-khac-tui-unisex-tuu6014-ddo-10.jpg?v=1690163385337', 182, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (726, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-khac-tui-unisex-tuu6014-ddo-11.jpg?v=1690163385337', 182, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (727, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-khac-tui-unisex-tuu6014-ddo-13.jpg?v=1690163385337', 182, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (728, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-khac-tui-unisex-tuu6014-ddo-8.jpg?v=1690163385337', 182, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (729, N'https://bizweb.dktcdn.net/100/438/408/products/muu6002-den-4.jpg?v=1683536013387', 183, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (730, N'https://bizweb.dktcdn.net/100/438/408/products/muu6002-den.jpg?v=1683536021577', 183, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (731, N'https://bizweb.dktcdn.net/100/438/408/products/muu6002-den-2.jpg?v=1683536027790', 183, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (732, N'https://bizweb.dktcdn.net/100/438/408/products/muu6002-den-3.jpg?v=1683536029060', 183, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (733, N'https://bizweb.dktcdn.net/100/438/408/products/mu-nam-vai-bo-mum5008-hna-5.jpg?v=1678528002797', 184, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (734, N'https://bizweb.dktcdn.net/100/438/408/products/mu-nam-vai-bo-mum5008-hna-4.jpg?v=1678528002797', 184, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (735, N'https://bizweb.dktcdn.net/100/438/408/products/mu-nam-vai-bo-mum5008-hna-3.jpg?v=1678528002797', 184, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (736, N'https://bizweb.dktcdn.net/100/438/408/products/mu-nam-vai-bo-mum5008-hna-6.jpg?v=1678528002797', 184, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (737, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-tui-unisex-tuu6006-dm1-5.jpg?v=1685671273853', 185, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (738, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-tui-unisex-tuu6006-dm1-4.jpg?v=1685671274890', 185, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (739, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-tui-unisex-tuu6006-dm1-1.jpg?v=1685671276430', 185, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (740, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-nam-tui-unisex-tuu6006-dm1-1.jpg?v=1685671276430', 185, 10)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (741, N'https://bizweb.dktcdn.net/100/438/408/products/tuu6016-xah-8.jpg?v=1685671395173', 186, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (742, N'https://bizweb.dktcdn.net/100/438/408/products/tuu6016-xah-6.jpg?v=1685671401210', 186, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (743, N'https://bizweb.dktcdn.net/100/438/408/products/tuu6016-xah-1.jpg?v=1685671404320', 186, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (744, N'https://bizweb.dktcdn.net/100/438/408/products/tuu6016-xah-4.jpg?v=1685671406983', 186, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (745, N'https://bizweb.dktcdn.net/100/438/408/products/kinh-ram-kin6012-nau-1.jpg?v=1690163419813', 187, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (746, N'https://bizweb.dktcdn.net/100/438/408/products/kinh-ram-kin6012-nau-2.jpg?v=1690163419813', 187, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (747, N'https://bizweb.dktcdn.net/100/438/408/products/kinh-ram-kin6012-nau-5.jpg?v=1690163419813', 187, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (748, N'https://bizweb.dktcdn.net/100/438/408/products/kinh-ram-kin6012-nau-3.jpg?v=1690163419813', 187, 7)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (749, N'https://bizweb.dktcdn.net/100/438/408/products/kin6008-kam-1.jpg?v=1690163420003', 188, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (750, N'https://bizweb.dktcdn.net/100/438/408/products/kin6008-kam-2.jpg?v=1690163420003', 188, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (751, N'https://bizweb.dktcdn.net/100/438/408/products/kin6008-kam-4.jpg?v=1690163420003', 188, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (752, N'https://bizweb.dktcdn.net/100/438/408/products/kin6008-kam-6.jpg?v=1690163420003', 188, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (753, N'https://bizweb.dktcdn.net/100/438/408/products/kin6014-nau-2.jpg?v=1690163420207', 189, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (754, N'https://bizweb.dktcdn.net/100/438/408/products/kin6014-nau-3.jpg?v=1690163420207', 189, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (755, N'https://bizweb.dktcdn.net/100/438/408/products/kin6014-nau-5.jpg?v=1690163420207', 189, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (756, N'https://bizweb.dktcdn.net/100/438/408/products/kin6014-nau-4.jpg?v=1690163420207', 189, 2)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (757, N'https://bizweb.dktcdn.net/100/438/408/products/vay-dam-tre-em-vak6104-hts-yody.jpg?v=1688723302073', 190, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (758, N'https://bizweb.dktcdn.net/100/438/408/products/vay-dam-tre-em-vak6104-hts-13-yody.jpg?v=1690163452260', 190, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (759, N'https://bizweb.dktcdn.net/100/438/408/products/vay-dam-tre-em-vak6104-hts-18-yody.jpg?v=1690163452260', 190, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (760, N'https://bizweb.dktcdn.net/100/438/408/products/vay-dam-tre-em-vak6104-hts-15-yody.jpg?v=1690163452260', 190, 8)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (761, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vak6080-xng-5.jpg?v=1690163452900', 191, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (762, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vak6080-xng-4.jpg?v=1690163452900', 191, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (763, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vak6080-xng-6.jpg?v=1690163452900', 191, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (764, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vak6080-xng-3.jpg?v=1690163452900', 191, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (765, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vtk6032-trx-6.jpg?v=1690163526003', 192, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (766, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vtk6032-trx-3.jpg?v=1690163526003', 192, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (767, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vtk6032-trx-5.jpg?v=1690163526003', 192, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (768, N'https://bizweb.dktcdn.net/100/438/408/products/vay-tre-em-vtk6032-trx-2.jpg?v=1690163526003', 192, 5)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (769, N'https://bizweb.dktcdn.net/100/438/408/products/dam-be-gai-vnk5364-hog-3.jpg?v=1690163520730', 193, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (770, N'https://bizweb.dktcdn.net/100/438/408/products/dam-be-gai-vnk5364-hog-5.jpg?v=1690163520730', 193, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (771, N'https://bizweb.dktcdn.net/100/438/408/products/dam-be-gai-vnk5364-hog-1.jpg?v=1690163520730', 193, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (772, N'https://bizweb.dktcdn.net/100/438/408/products/dam-be-gai-vnk5364-hog-4.jpg?v=1690163520730', 193, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (773, N'https://bizweb.dktcdn.net/100/438/408/products/vnk5292-tim01.jpg?v=1690163643387', 194, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (774, N'https://bizweb.dktcdn.net/100/438/408/products/vnk5292-tim04.jpg?v=1690163643387', 194, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (775, N'https://bizweb.dktcdn.net/100/438/408/products/vnk5292-tim03.jpg?v=1690163643387', 194, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (776, N'https://bizweb.dktcdn.net/100/438/408/products/vnk5292-tim06.jpg?v=1690163643387', 194, 6)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (777, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-tre-em-dep-sandal-dek6006-den-2.jpg?v=1689066273030', 195, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (778, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-tre-em-dep-sandal-dek6006-den-1.jpg?v=1689066282063', 195, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (779, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-tre-em-dep-sandal-dek6006-den-5.jpg?v=1689066277877', 195, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (780, N'https://bizweb.dktcdn.net/100/438/408/products/phu-kien-tre-em-dep-sandal-dek6006-den-3.jpg?v=1689066282063', 195, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (781, N'https://bizweb.dktcdn.net/100/438/408/products/dek6010-xah-2.jpg?v=1690163379560', 196, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (782, N'https://bizweb.dktcdn.net/100/438/408/products/dek6010-xah-1.jpg?v=1689066718127', 196, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (783, N'https://bizweb.dktcdn.net/100/438/408/products/dek6010-xah-4.jpg?v=1689066715850', 196, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (784, N'https://bizweb.dktcdn.net/100/438/408/products/dek6010-xah-3.jpg?v=1689066715850', 196, 9)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (785, N'https://bizweb.dktcdn.net/100/438/408/products/dek5007-tra-5.jpg?v=1662911150507', 197, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (786, N'https://bizweb.dktcdn.net/100/438/408/products/dek5007-tra-1.jpg?v=1690163753460', 197, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (787, N'https://bizweb.dktcdn.net/100/438/408/products/dek5007-tra-3.jpg?v=1690163753460', 197, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (788, N'https://bizweb.dktcdn.net/100/438/408/products/dek5007-tra-2.jpg?v=1690163753460', 197, 3)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (789, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6043-nau-qjm5043-xdm-6.jpg?v=1695611326503', 198, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (790, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6043-nau-qjm5043-xdm-1.jpg?v=1695611326503', 198, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (791, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6043-nau-qjm5043-xdm-9.jpg?v=1695611326503', 198, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (792, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6043-nau-qjm5043-xdm-11.jpg?v=1695611326503', 198, 11)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (793, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-ddo-qjm5037-dni-5.jpg?v=1695612027443', 199, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (794, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-ddo-qjm5037-dni-6.jpg?v=1695612037527', 199, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (795, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-ddo-qjm5037-dni-8.jpg?v=1695612037527', 199, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (796, N'https://bizweb.dktcdn.net/100/438/408/products/ao-polo-nam-yody-apm6081-ddo-qjm5037-dni-9.jpg?v=1695612037527', 199, 1)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (797, N'https://bizweb.dktcdn.net/100/438/408/products/sam6105-xre-3.jpg?v=1694672951227', 200, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (798, N'https://bizweb.dktcdn.net/100/438/408/products/sam6105-xre-1.jpg?v=1694672977850', 200, 4)
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (799, N'https://bizweb.dktcdn.net/100/438/408/products/sam6105-xre-6.jpg?v=1694672979457', 200, 4)
GO
INSERT [dbo].[Image] ([id], [url], [product_id], [color_id]) VALUES (800, N'https://bizweb.dktcdn.net/100/438/408/products/sam6105-xre-2.jpg?v=1694672978560', 200, 4)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (1, N'User 1', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 1835000, CAST(N'2023-10-04' AS Date), N'done', 1)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (2, N'User 1', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5775000, CAST(N'2023-10-29' AS Date), N'done', 1)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (3, N'User 1', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 8983000, CAST(N'2023-10-12' AS Date), N'done', 1)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (4, N'User 2', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6786000, CAST(N'2023-10-14' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (5, N'User 2', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4217000, CAST(N'2023-10-17' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (6, N'User 2', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7735000, CAST(N'2023-10-11' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (7, N'User 3', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6544000, CAST(N'2023-10-06' AS Date), N'done', 3)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (8, N'User 3', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2906000, CAST(N'2023-10-18' AS Date), N'done', 3)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (9, N'User 3', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 8082000, CAST(N'2023-10-22' AS Date), N'done', 3)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (10, N'User 4', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2323000, CAST(N'2023-10-14' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (11, N'User 4', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6688000, CAST(N'2023-10-15' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (12, N'User 4', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 1881000, CAST(N'2023-10-15' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (13, N'User 5', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4238000, CAST(N'2023-10-27' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (14, N'User 5', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6627000, CAST(N'2023-10-01' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (15, N'User 5', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6259000, CAST(N'2023-10-18' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (16, N'User 6', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3139000, CAST(N'2023-10-05' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (17, N'User 6', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3673000, CAST(N'2023-10-24' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (18, N'User 6', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6184000, CAST(N'2023-10-07' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (19, N'User 7', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2730000, CAST(N'2023-10-17' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (20, N'User 7', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6545000, CAST(N'2023-10-06' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (21, N'User 7', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7214000, CAST(N'2023-10-23' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (22, N'User 8', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 15404000, CAST(N'2023-10-21' AS Date), N'done', 8)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (23, N'User 8', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5820000, CAST(N'2023-10-14' AS Date), N'done', 8)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (24, N'User 8', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5176000, CAST(N'2023-10-17' AS Date), N'done', 8)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (25, N'User 9', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6265000, CAST(N'2023-10-17' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (26, N'User 9', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5333000, CAST(N'2023-10-14' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (27, N'User 9', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5306000, CAST(N'2023-10-08' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (28, N'User 10', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2521000, CAST(N'2023-10-16' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (29, N'User 10', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 9071000, CAST(N'2023-10-05' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (30, N'User 10', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5739000, CAST(N'2023-10-06' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (31, N'User 11', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3942000, CAST(N'2023-10-26' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (32, N'User 11', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3489000, CAST(N'2023-10-06' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (33, N'User 11', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4777000, CAST(N'2023-10-19' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (34, N'User 12', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3334000, CAST(N'2023-10-29' AS Date), N'done', 12)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (35, N'User 12', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3642000, CAST(N'2023-10-04' AS Date), N'done', 12)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (36, N'User 12', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6196000, CAST(N'2023-10-17' AS Date), N'done', 12)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (37, N'User 13', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3440000, CAST(N'2023-10-19' AS Date), N'done', 13)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (38, N'User 13', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2799000, CAST(N'2023-10-13' AS Date), N'done', 13)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (39, N'User 13', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4312000, CAST(N'2023-10-04' AS Date), N'done', 13)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (40, N'User 14', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6584000, CAST(N'2023-10-09' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (41, N'User 14', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7567000, CAST(N'2023-10-02' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (42, N'User 14', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 10377000, CAST(N'2023-10-04' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (43, N'User 15', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2452000, CAST(N'2023-10-07' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (44, N'User 15', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5387000, CAST(N'2023-10-01' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (45, N'User 15', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5708000, CAST(N'2023-10-26' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (46, N'User 16', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6604000, CAST(N'2023-10-05' AS Date), N'done', 16)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (47, N'User 16', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2343000, CAST(N'2023-10-02' AS Date), N'done', 16)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (48, N'User 16', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5639000, CAST(N'2023-10-09' AS Date), N'done', 16)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (49, N'User 17', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4280000, CAST(N'2023-10-02' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (50, N'User 17', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7442000, CAST(N'2023-10-22' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (51, N'User 17', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 8471000, CAST(N'2023-10-04' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (52, N'User 18', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6647000, CAST(N'2023-10-24' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (53, N'User 18', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6168000, CAST(N'2023-10-19' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (54, N'User 18', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 12102000, CAST(N'2023-10-04' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (55, N'User 19', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3070000, CAST(N'2023-10-22' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (56, N'User 19', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5088000, CAST(N'2023-10-06' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (57, N'User 19', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7559000, CAST(N'2023-10-18' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (58, N'User 20', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3956000, CAST(N'2023-10-21' AS Date), N'done', 20)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (59, N'User 20', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5966000, CAST(N'2023-10-04' AS Date), N'done', 20)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (60, N'User 20', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4873000, CAST(N'2023-10-08' AS Date), N'done', 20)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (61, N'Trần Thị Bảo', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4190000, CAST(N'2023-11-02' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (62, N'Nguyễn Văn An', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5317000, CAST(N'2023-11-01' AS Date), N'done', 3)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (63, N'Võ Thị Hà', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 12303000, CAST(N'2023-11-05' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (64, N'Phạm Thị Diệu', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4397000, CAST(N'2023-11-04' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (65, N'Trương Thị Lan
', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6348000, CAST(N'2023-11-05' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (66, N'Mai Văn Sơn', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3680000, CAST(N'2023-11-02' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (67, N'Ngô Văn Nam', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 13333000, CAST(N'2023-11-01' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (68, N'Ngô Văn Nam', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3765000, CAST(N'2023-11-06' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (69, N'Phạm Thị Diệu', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7208000, CAST(N'2023-11-08' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (70, N'Trần Thị Bảo', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4618000, CAST(N'2023-11-01' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (71, N'Ngô Văn Nam', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3290000, CAST(N'2023-11-08' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (72, N'Huỳnh Thị Phương', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3703000, CAST(N'2023-11-01' AS Date), N'done', 8)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (73, N'Nguyễn Thị Hường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 14915000, CAST(N'2023-11-05' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (74, N'Trương Thị Lan
', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2881000, CAST(N'2023-11-02' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (75, N'Mai Văn Sơn', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3130000, CAST(N'2023-11-02' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (76, N'Hoàng Văn Đức', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 8881000, CAST(N'2023-11-04' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (77, N'Ngô Văn Nam', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3046000, CAST(N'2023-11-08' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (78, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4230000, CAST(N'2023-11-01' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (79, N'Phạm Thị Diệu', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6694000, CAST(N'2023-11-09' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (80, N'Lê Văn Cường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2453000, CAST(N'2023-11-08' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (81, N'Dương Thị Phượng', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7714000, CAST(N'2023-11-08' AS Date), N'done', 16)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (82, N'Đặng Văn Hải', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2861000, CAST(N'2023-11-09' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (83, N'Lê Văn Cường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5213000, CAST(N'2023-11-05' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (84, N'Hồ Thị Mai', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5594000, CAST(N'2023-11-05' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (85, N'Lý Văn Quốc', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5308000, CAST(N'2023-11-07' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (86, N'Hồ Thị Mai', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3508000, CAST(N'2023-11-02' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (87, N'Trương Thị Lan
', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6184000, CAST(N'2023-11-09' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (88, N'Võ Thị Hà', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3737000, CAST(N'2023-11-08' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (89, N'Lý Văn Quốc', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7493000, CAST(N'2023-11-01' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (90, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 9090000, CAST(N'2023-11-05' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (91, N'Nguyễn Văn An', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 11326000, CAST(N'2023-11-08' AS Date), N'done', 3)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (92, N'Đặng Văn Hải', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4559000, CAST(N'2023-11-09' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (93, N'Trương Thị Lan
', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 6833000, CAST(N'2023-11-08' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (94, N'Mai Văn Sơn', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4934000, CAST(N'2023-11-03' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (95, N'Nguyễn Thị Hường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3951000, CAST(N'2023-11-08' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (96, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 9182000, CAST(N'2023-11-07' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (97, N'Mai Văn Sơn', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7981000, CAST(N'2023-11-07' AS Date), N'done', 19)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (98, N'Hoàng Văn Đức', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5618000, CAST(N'2023-11-06' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (99, N'Đặng Văn Hải', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5167000, CAST(N'2023-11-01' AS Date), N'done', 11)
GO
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (100, N'Hoàng Văn Đức', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2603000, CAST(N'2023-11-07' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (101, N'Trần Thị Bảo', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4039000, CAST(N'2023-11-04' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (102, N'Hoàng Văn Đức', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3860000, CAST(N'2023-11-03' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (103, N'Hồ Thị Mai', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5708000, CAST(N'2023-11-02' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (104, N'Ngô Văn Nam', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4935000, CAST(N'2023-11-07' AS Date), N'done', 15)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (105, N'Trần Thị Bảo', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5186000, CAST(N'2023-11-03' AS Date), N'done', 4)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (106, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2941000, CAST(N'2023-11-05' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (107, N'Hoàng Văn Đức', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2993000, CAST(N'2023-11-06' AS Date), N'done', 7)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (108, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3259000, CAST(N'2023-11-01' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (109, N'Võ Thị Hà', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4155000, CAST(N'2023-11-06' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (110, N'Lê Văn Cường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3346000, CAST(N'2023-11-01' AS Date), N'done', 5)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (111, N'Lý Văn Quốc', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7322000, CAST(N'2023-11-07' AS Date), N'done', 17)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (112, N'Nguyễn Thị Hường', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4121000, CAST(N'2023-11-03' AS Date), N'done', 2)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (113, N'Phan Văn Giang', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 5746000, CAST(N'2023-11-06' AS Date), N'done', 9)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (114, N'Bùi Thị Kim', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4171000, CAST(N'2023-11-07' AS Date), N'done', 12)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (115, N'Hồ Thị Mai', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 2887000, CAST(N'2023-11-01' AS Date), N'done', 14)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (116, N'Trương Thị Lan
', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 8789000, CAST(N'2023-11-07' AS Date), N'done', 18)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (117, N'Phạm Thị Diệu', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4043000, CAST(N'2023-11-04' AS Date), N'done', 6)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (118, N'Đặng Văn Hải', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 7446000, CAST(N'2023-11-09' AS Date), N'done', 11)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (119, N'Võ Thị Hà', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 3812000, CAST(N'2023-11-06' AS Date), N'done', 10)
INSERT [dbo].[Order] ([id], [customerName], [phone], [address], [total], [date], [status], [user_id]) VALUES (120, N'Võ Thị Hà', N'0123456789', N'Hà Nội - Hà Đông - La Khê - Số 1 Ngõ 1 Tổ 1 ', 4388000, CAST(N'2023-11-04' AS Date), N'done', 10)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (1, 8, 1, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (1, 12, 1, 399000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (1, 188, 3, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (2, 32, 5, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (2, 173, 7, 489000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (2, 181, 3, 119000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (3, 53, 6, 699000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (3, 84, 6, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (3, 132, 5, 359000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (4, 10, 4, 349000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (4, 57, 4, 599000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (4, 164, 6, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (5, 4, 4, 369000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (5, 117, 2, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (5, 197, 7, 249000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (6, 47, 1, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (6, 52, 7, 599000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (6, 108, 7, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (7, 12, 6, 399000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (7, 84, 4, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (7, 130, 6, 359000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (8, 38, 4, 299000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (8, 150, 3, 269000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (8, 179, 7, 129000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (9, 52, 7, 599000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (9, 105, 7, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (9, 151, 4, 99000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (10, 24, 2, 399000, NULL, N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (10, 190, 4, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (10, 198, 1, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (11, 23, 6, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (11, 101, 2, 1399000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (11, 198, 4, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (12, 33, 4, 269000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (12, 148, 4, 169000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (12, 156, 1, 129000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (13, 2, 3, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (13, 17, 5, 269000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (13, 124, 4, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (14, 3, 5, 399000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (14, 54, 6, 649000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (14, 60, 2, 369000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (15, 52, 7, 599000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (15, 164, 3, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (15, 171, 1, 569000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (16, 20, 1, 269000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (16, 85, 6, 299000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (16, 191, 4, 269000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (17, 41, 2, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (17, 57, 4, 599000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (17, 106, 1, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (18, 50, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (18, 89, 5, 299000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (18, 136, 4, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (19, 52, 1, 599000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (19, 183, 7, 199000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (19, 188, 2, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (20, 112, 5, 449000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (20, 126, 7, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (20, 191, 3, 269000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (21, 123, 6, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (21, 132, 3, 359000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (21, 169, 7, 449000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (22, 102, 6, 1589000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (22, 177, 3, 1189000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (22, 198, 7, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (23, 98, 7, 369000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (23, 140, 6, 249000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (23, 142, 7, 249000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (24, 23, 3, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (24, 32, 6, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (24, 89, 5, 299000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (25, 9, 4, 369000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (25, 70, 2, 403000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (25, 78, 7, 569000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (26, 30, 5, 199000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (26, 143, 5, 169000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (26, 167, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (27, 59, 6, 249000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (27, 174, 3, 989000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (27, 184, 5, 169000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (28, 27, 1, 349000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (28, 31, 7, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (28, 152, 1, 79000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (29, 7, 6, 349000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (29, 71, 7, 569000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (29, 124, 6, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (30, 38, 3, 299000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (30, 101, 3, 1399000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (30, 179, 5, 129000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (31, 110, 2, 399000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (31, 118, 3, 549000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (31, 123, 3, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (32, 29, 7, 299000, NULL, N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (32, 89, 3, 299000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (32, 168, 1, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (33, 109, 1, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (33, 171, 5, 569000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (33, 192, 7, 199000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (34, 46, 1, 699000, N'L', N'Green')
GO
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (34, 69, 2, 569000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (34, 119, 3, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (35, 29, 1, 299000, NULL, N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (35, 113, 3, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (35, 117, 4, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (36, 82, 1, 29000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (36, 109, 7, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (36, 195, 6, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (37, 6, 6, 369000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (37, 97, 1, 329000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (37, 141, 3, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (38, 60, 2, 369000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (38, 111, 3, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (38, 181, 6, 119000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (39, 62, 1, 569000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (39, 73, 5, 569000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (39, 112, 2, 449000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (40, 65, 6, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (40, 77, 3, 499000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (40, 136, 7, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (41, 50, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (41, 72, 7, 403000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (41, 155, 7, 179000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (42, 16, 7, 329000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (42, 103, 5, 1589000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (42, 179, 1, 129000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (43, 26, 6, 329000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (43, 134, 1, 299000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (43, 135, 1, 179000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (44, 24, 5, 399000, NULL, N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (44, 32, 4, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (44, 113, 4, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (45, 34, 4, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (45, 119, 4, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (45, 196, 4, 429000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (46, 56, 7, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (46, 109, 3, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (46, 140, 6, 249000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (47, 113, 3, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (47, 127, 1, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (47, 192, 3, 199000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (48, 35, 5, 329000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (48, 48, 5, 699000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (48, 120, 1, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (49, 54, 3, 649000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (49, 97, 6, 329000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (49, 128, 1, 359000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (50, 91, 5, 399000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (50, 95, 6, 489000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (50, 129, 7, 359000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (51, 154, 5, 199000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (51, 168, 7, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (51, 171, 7, 569000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (52, 30, 6, 199000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (52, 56, 3, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (52, 178, 4, 989000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (53, 15, 7, 299000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (53, 90, 3, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (53, 103, 2, 1589000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (54, 102, 6, 1589000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (54, 147, 6, 169000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (54, 161, 6, 259000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (55, 36, 6, 269000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (55, 85, 2, 299000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (55, 196, 2, 429000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (56, 65, 5, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (56, 136, 2, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (56, 185, 5, 399000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (57, 94, 4, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (57, 172, 4, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (57, 177, 3, 1189000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (58, 31, 7, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (58, 180, 2, 109000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (58, 199, 5, 329000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (59, 62, 3, 569000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (59, 76, 6, 569000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (59, 143, 5, 169000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (60, 54, 3, 649000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (60, 142, 7, 249000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (60, 143, 7, 169000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (61, 99, 2, 299000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (61, 109, 5, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (61, 190, 3, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (62, 23, 7, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (62, 35, 4, 329000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (62, 81, 2, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (63, 42, 7, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (63, 103, 6, 1589000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (63, 148, 4, 169000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (64, 16, 5, 329000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (64, 26, 7, 329000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (64, 108, 1, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (65, 5, 2, 379000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (65, 34, 4, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (65, 57, 6, 599000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (66, 42, 4, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (66, 195, 3, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (66, 196, 3, 429000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (67, 14, 5, 329000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (67, 104, 6, 1589000, N'L', N'Black')
GO
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (67, 131, 6, 359000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (68, 3, 6, 399000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (68, 90, 3, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (68, 152, 6, 79000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (69, 70, 6, 403000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (69, 87, 6, 439000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (69, 106, 4, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (70, 78, 4, 569000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (70, 120, 3, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (70, 146, 5, 169000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (71, 69, 2, 569000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (71, 184, 3, 169000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (71, 199, 5, 329000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (72, 65, 2, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (72, 71, 3, 569000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (72, 166, 2, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (73, 56, 4, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (73, 104, 7, 1589000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (73, 111, 4, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (74, 9, 2, 369000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (74, 20, 5, 269000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (74, 47, 2, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (75, 85, 6, 299000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (75, 137, 1, 349000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (75, 198, 3, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (76, 116, 6, 599000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (76, 141, 6, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (76, 172, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (77, 41, 5, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (77, 82, 7, 29000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (77, 189, 2, 499000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (78, 22, 5, 369000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (78, 78, 4, 569000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (78, 180, 1, 109000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (79, 19, 3, 329000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (79, 41, 6, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (79, 120, 7, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (80, 33, 3, 269000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (80, 116, 1, 599000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (80, 193, 3, 349000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (81, 73, 6, 569000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (81, 150, 3, 269000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (81, 166, 7, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (82, 14, 5, 329000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (82, 105, 2, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (82, 180, 2, 109000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (83, 64, 4, 263000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (83, 171, 6, 569000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (83, 197, 3, 249000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (84, 22, 3, 369000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (84, 32, 6, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (84, 141, 7, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (85, 2, 4, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (85, 115, 2, 559000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (85, 163, 6, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (86, 58, 5, 399000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (86, 105, 1, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (86, 184, 6, 169000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (87, 11, 2, 369000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (87, 55, 7, 699000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (87, 152, 7, 79000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (88, 19, 2, 329000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (88, 33, 7, 269000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (88, 42, 4, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (89, 94, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (89, 119, 7, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (89, 145, 3, 169000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (90, 175, 6, 1289000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (90, 187, 1, 369000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (90, 194, 3, 329000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (91, 41, 4, 369000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (91, 104, 6, 1589000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (91, 152, 4, 79000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (92, 20, 6, 269000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (92, 54, 3, 649000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (92, 166, 2, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (93, 2, 3, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (93, 7, 7, 349000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (93, 88, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (94, 25, 5, 249000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (94, 44, 7, 299000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (94, 58, 4, 399000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (95, 16, 3, 329000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (95, 106, 3, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (95, 169, 3, 449000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (96, 35, 5, 329000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (96, 54, 7, 649000, N'L', N'Yellow')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (96, 121, 6, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (97, 116, 6, 599000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (97, 121, 6, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (97, 192, 7, 199000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (98, 22, 4, 369000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (98, 118, 3, 549000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (98, 167, 5, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (99, 141, 4, 299000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (99, 176, 2, 1289000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (99, 183, 7, 199000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (100, 118, 1, 549000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (100, 128, 5, 359000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (100, 161, 1, 259000, N'L', N'Black')
GO
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (101, 121, 3, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (101, 136, 3, 299000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (101, 198, 5, 329000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (102, 22, 2, 369000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (102, 127, 7, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (102, 194, 1, 329000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (103, 23, 4, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (103, 117, 2, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (103, 125, 6, 499000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (104, 38, 6, 299000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (104, 153, 5, 269000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (104, 169, 4, 449000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (105, 4, 6, 369000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (105, 16, 6, 329000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (105, 121, 2, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (106, 137, 7, 349000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (106, 157, 1, 99000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (106, 195, 1, 399000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (107, 21, 1, 329000, N'L', N'Pink')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (107, 123, 5, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (107, 143, 1, 169000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (108, 26, 6, 329000, NULL, N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (108, 158, 2, 149000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (108, 194, 3, 329000, N'L', N'Purple')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (109, 35, 6, 329000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (109, 84, 2, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (109, 143, 7, 169000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (110, 92, 6, 239000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (110, 128, 2, 359000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (110, 192, 6, 199000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (111, 106, 6, 539000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (111, 172, 7, 499000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (111, 181, 5, 119000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (112, 23, 2, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (112, 37, 1, 269000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (112, 74, 6, 499000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (113, 46, 6, 699000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (113, 111, 2, 449000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (113, 180, 6, 109000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (114, 23, 4, 429000, NULL, N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (114, 56, 1, 499000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (114, 173, 4, 489000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (115, 28, 5, 269000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (115, 85, 3, 299000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (115, 159, 5, 129000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (116, 65, 3, 499000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (116, 83, 1, 369000, N'L', N'Red')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (116, 178, 7, 989000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (117, 12, 6, 399000, N'L', N'Blue')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (117, 135, 7, 179000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (117, 157, 4, 99000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (118, 153, 6, 269000, N'L', N'Orange ')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (118, 177, 4, 1189000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (118, 191, 4, 269000, N'L', N'Green')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (119, 84, 4, 499000, N'L', N'White')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (119, 118, 2, 549000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (119, 130, 2, 359000, N'L', N'Gray')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (120, 55, 4, 699000, N'L', N'Brown')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (120, 68, 2, 499000, N'L', N'Black')
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [quantity], [price], [size], [color]) VALUES (120, 157, 6, 99000, N'L', N'White')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (1, N'Áo Polo Nam Mắt Chim Bo Hiệu Ứng Dệt Nổi', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(359000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (2, N'Polo Nam Cafe Dệt Tổ Ong Bo 3 Màu', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (3, N'Polo Nam Pique Dệt Kẻ Trắng Nâu', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (4, N'Áo Polo Nam Coolmax Regular', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(369000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (5, N'Áo Polo Nam Mắt Chim In Hoạ Tiết', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(379000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (6, N'Áo Polo Nam Coolmax Can Vai In Tràn', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (7, N'Polo Nam Cafe Dệt Tổ Ong Thêu Gấu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(349000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (8, N'Polo Nam Cafe Phối Vai', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (9, N'Áo Polo Nam Mắt Chim Hoạ Tiết Tràn Thân', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (10, N'Áo Polo Nam Mắt Chim In Thuyền Phối Màu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(349000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (11, N'Polo Nam Bạc Hà Pha Đường Kẻ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (12, N'Polo Nam Dệt Kẻ', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (13, N'Áo Polo Nam Mắt Chim Phối Màu In Ngực', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(359000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (14, N'Polo Nam Cafe Dệt Tổ Ong Phối Bo', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (15, N'Polo Nam Cafe Dệt Tổ Ong Bo 3 Màu', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (16, N'Áo Polo Nữ Mắt Chim In Thuyền Phối Màu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (17, N'Áo Polo Nữ Thun Rib Nẹp Cúc', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (18, N'Polo Nữ Cafe Dệt Tổ Ong Phối Bo', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (19, N'Áo Polo Nữ Pique Gia Đình', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (20, N'Áo Polo Nữ Thun Rib Thêu Hình', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (21, N'Áo Polo Nữ Mắt Chim In Thuyền Phối Màu', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (22, N'Áo Polo Nữ Mắt Chim Kẻ Ngang', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(369000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (23, N'Polo Nữ Cafe Dệt Tổ Ong Bo 3 Màu', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(429000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (24, N'Áo Polo Nữ Mắt Chim Croptop', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (25, N'Polo Nữ Cafe Dệt Tổ Ong Thêu Gấu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(249000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (26, N'Áo Polo Nữ Mắt Chim In Quả Trám', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (27, N'Áo Polo Nữ Cafe Phối Tay', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(349000.00 AS Decimal(10, 2)), 100, N'Women', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (28, N'Polo Kid Cafe Dệt Tổ Ong Phối Bo', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(269000.00 AS Decimal(10, 2)), 28, N'Children', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (29, N'Áo Polo Thể Thao Trẻ Em In Cậu Bé ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 29, N'Children', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (30, N'Polo Trẻ Em Cafe Phối Tay', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(199000.00 AS Decimal(10, 2)), 30, N'Children', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (31, N'Áo Thun Thể Thao Nam Siệu Nhẹ In Limitless', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(299000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (32, N'Áo Thun Thể Thao Nam Training', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (33, N'Áo Thể Thao Thu Đông Nam Nỉ Cơ Bản', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (34, N'Áo Thun Unisex YOGUU Basic', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (35, N'Áo Thun Thể Thao Nam In Ngực', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (36, N'Áo Phông Thể Thao Nam In Chữ Cross', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 100, N'Men', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (37, N'Áo Thun Nữ Cổ Tim Bamboo', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(269000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (38, N'Áo Thun Nữ Cổ Tròn Bamboo Đẹp', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (39, N'Áo Thun Nữ Dáng Ôm Phối Bo', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (40, N'Áo Phông Nữ Basic Cotton Double Face Siêu Mềm Mại', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(199000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (41, N'Áo Thu Đông Nữ Dáng Rộng', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (42, N'Áo Thu Đông Nữ Phối Kẻ', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Women', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (43, N'Áo Dài Tay Kid In Tràn Bo Gấu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(199000.00 AS Decimal(10, 2)), 100, N'Children', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (44, N'T-Shirt Kid Bé In Khủng Long', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Children', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (45, N'Áo Thun Trẻ Em In Chữ Prince', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 100, N'Children', 6)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (46, N'Áo Khoác Gió Nam 3C 2 Lớp Thể Thao', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(699000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (47, N'Áo Khoác Nam Chun Bo Gấu Cản Gió', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (48, N'Áo Phao Nam 3s Plus', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(699000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (49, N'Áo Phao Nam Có Mũ Siêu Nhẹ', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(599000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (50, N'Áo Khoác Gió Nam 3C Plus Năng Động', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (51, N'Áo Khoác Gió Thông Minh Nam', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(599000.00 AS Decimal(10, 2)), 100, N'Men', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (52, N'Áo Khoác Gió Nữ 3C Plus Năng Động', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(599000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (53, N'Áo Khoác Nữ Kaki Dáng Ngắn', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(699000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (54, N'Áo Khoác Phao Nữ Siêu Nhẹ Siêu Ấm', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(649000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (55, N'Áo Khoác Gió Nữ Thể Thao Phối Lưng', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(699000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (56, N'Áo Khoác Phao Nữ 3s Plus', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (57, N'Áo Khoác Nữ Thể Thao In Sọc', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(599000.00 AS Decimal(10, 2)), 100, N'Women', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (58, N'Áo Khoác Gió Cho Bé 3C Plus', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(399000.00 AS Decimal(10, 2)), 100, N'Children', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (59, N'Áo Khoác Gió Thông Minh Trẻ Em', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(249000.00 AS Decimal(10, 2)), 100, N'Children', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (60, N'Áo Khoác Kid Nhỏ Gia Đình 3c Pro', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Children', 7)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (61, N'Áo Sơ Mi Nam Trắng Dài Tay Nano', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (62, N'Áo Sơ Mi Nam Dài Tay Cafe Melang', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(569000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (63, N'Áo Sơ Mi Nam Tay Ngắn Nano', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(403000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (64, N'Áo Sơ Mi Nam Tay Dài Thoáng Khí', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(263000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (65, N'Áo Sơ Mi Nam Tay Ngắn MÁT - MỀM', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (66, N'Áo Sơ Mi Nam Tay Ngắn Slim Kẻ Caro', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(403000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (67, N'Áo Sơ Mi Nam Tay Dài Kẻ Sọc', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(569000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (68, N'Áo Sơ Mi Nam Tay Dài In Connect', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (69, N'Áo Sơ Mi Nam Dài Tay Flannel Kẻ Caro', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(569000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (70, N'Áo Sơ Mi Nam Dài Tay Kẻ Caro', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(403000.00 AS Decimal(10, 2)), 100, N'Men', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (71, N'Áo Sơ Mi Nữ Cổ Đức Nano ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(569000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (72, N'Áo Sơ Mi Nữ Tay Ngắn Nano', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(403000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (73, N'Áo Sơ Mi Nữ Dài Tay Cơ Bản Nano', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(569000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (74, N'Áo Sơ Mi Tay Dài Nữ Nano Kẻ Năng Động', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (75, N'Sơ Mi Cộc Tay Nữ', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(403000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (76, N'Áo Sơ Mi Cộc Tay Nữ Vai Chờm Nơ', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(569000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (77, N'Áo Sơ Mi Tay Dài Nữ Suông Kèm Nơ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (78, N'Sơ Mi Dài Tay Nữ Thô Dáng Rộng', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(569000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (79, N'Áo Sơ Mi Tay Dài Nữ Cổ 2 Ve Túi Ngực', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(403000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (80, N'Áo Sơ Mi Tay Dài Nữ Cổ V', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (81, N'Áo Sơ Mi Tay Dài Nữ Cổ V', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (82, N'Áo sơ mi trẻ em cộc tay thêu gấu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(29000.00 AS Decimal(10, 2)), 100, N'Children', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (83, N'Áo sơ mi bé gái cộc tay bèo ngực', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Children', 8)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (84, N'Áo Thun Đông Nam Rip Cổ 4cm', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 84, N'Men', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (85, N'Áo Thu Đông Nam Kẻ In Gấu', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(299000.00 AS Decimal(10, 2)), 85, N'Men', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (86, N'Áo Thun Thu Đông Nam Họa Tiết Kẻ Ngang', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(439000.00 AS Decimal(10, 2)), 86, N'Men', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (87, N'Áo Thun Thu Đông Nam Họa Tiết Kẻ Ngang', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(439000.00 AS Decimal(10, 2)), 86, N'Men', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (88, N'Áo sweater nữ in chữ', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 88, N'Women', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (89, N'Áo sweater nữ in hình', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 89, N'Women', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (90, N'Áo Nỉ Trẻ Em Thêu Cún', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 90, N'Children', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (91, N'Áo Nỉ Trẻ Em Thêu Trái Tim', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(399000.00 AS Decimal(10, 2)), 91, N'Children', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (92, N'Áo Thun Trẻ Em Thêu Thỏ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(239000.00 AS Decimal(10, 2)), 92, N'Children', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (93, N'Áo Thun Trẻ Em Thêu Thỏ', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(239000.00 AS Decimal(10, 2)), 92, N'Children', 9)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (94, N'Áo len nam cổ lọ', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 100, N'Men', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (95, N'Áo len nam cổ polo ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(489000.00 AS Decimal(10, 2)), 100, N'Men', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (96, N'Áo Len Nữ Dáng Ôm Crotop', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 100, N'Women', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (97, N'Áo Len Nữ Dáng Ôm Croptop Kẻ', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 100, N'Women', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (98, N'Áo Len Nữ Ngắn Tay Dệt Kẻ', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 100, N'Women', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (99, N'Áo Len Trẻ Em Viscose Cơ Bản', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 100, N'Children', 10)
GO
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (100, N'Áo len trẻ em phối xẻ tà', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(199000.00 AS Decimal(10, 2)), 100, N'Children', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (101, N'Áo len cho bé lông xù', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(1399000.00 AS Decimal(10, 2)), 100, N'Children', 10)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (102, N'Áo Vest Nam Nano Công Sở Trẻ Trung', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(1589000.00 AS Decimal(10, 2)), 102, N'Men', 11)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (103, N'Áo Vest Nam Nano Sinh Viên Trẻ Trung', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(1589000.00 AS Decimal(10, 2)), 103, N'Men', 11)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (104, N'Áo Vest Nam Nano Học Sinh Trẻ Trung', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(1589000.00 AS Decimal(10, 2)), 104, N'Men', 11)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (105, N'Quần Jeans Nam Ống Suông Co Giãn Thoáng Mát', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 105, N'Men', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (106, N'Quần Jeans Nam Slimfit Lycra Co Giãn Mác Dệt', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(539000.00 AS Decimal(10, 2)), 106, N'Men', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (107, N'Quần Jeans Nam Slim Fit Lycra Co Giãn', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(599000.00 AS Decimal(10, 2)), 107, N'Men', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (108, N'Quần Jeans Nữ Dáng Boyfriend Cotton USA', N'Lựa chọn hoàn hảo cho thiết kế polo basic mới!

Áo polo nam YODY vải mắt chim cao cấp, cải tiến, thuận tiện

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Là 1 trong những chất liệu được yêu thích nhất tại YODY, áo polo nam mắt chim có hiệu ứng ánh sợi độc đáo óng ánh như mắt chim tinh anh

Thấm hút mồ hôi cực kỳ hiệu quả, kháng nhàu, bền form

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(449000.00 AS Decimal(10, 2)), 108, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (109, N'Quần Jeans Nữ Dáng Suông Túi Vuông', N'Thành phần: 100% Polyester by cafe

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế sở hữu nhiều ưu điểm nổi bật

Thấm hút tốt, khô nhanh, hạn chế bám mùi

Chống tia UV lên đến 99% 

Sản phẩm thiết kế mới ấn tượng, mang tinh thần thời trang bền vững góp phần bảo vệ môi trường

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(539000.00 AS Decimal(10, 2)), 109, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (110, N'Quần Jeans Nữ Baggy Co Giãn Cạp Liền', N'Chất liệu: Mắt chim

Thành phần: 49% Cotton + 47% Polyester + 4% Spandex

Sử dụng Cotton USA - sợi cotton tốt nhất trên thế giới

Công nghệ nhuộm Solid Dyed tạo nên hiệu ứng bắt mắt

Chất liệu vải độc đáo với hiệu ứng mắt chim độc đáo, mới lạ và trẻ trung

Vải mắt chim thông thoáng, thấm hút tốt có độ bền cao

Áo co giãn tốt, luôn giữ được form và bền màu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 110, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (111, N'Quần Jeans Nữ Skinny Lưng Cao Tôn Dáng', N'Thành phần:  98.5% Cotton USA + 1.5% Spandex

Quần jeans nữ dáng skinny ôm sát tôn lên trọn vẹn vòng 3 và đôi chân của người mặc

Thiết kế basic với 5 túi cơ bản (2 túi sau, 2 túi trước, 1 túi đồng hồ nhỏ)

Phần cạp cao giúp cho đối chân thon dài hơn

Chất liệu jean cotton Mỹ co giãn 4 chiều cao cấp được cả thế giới tin dùng

Sợi bông sạch và gần như không bị nhiễm khuẩn đồng thời bền hơn so với các loại bông thông thường

YODY - Look good. Feel good

Sản xuất tại Việt Nam', CAST(449000.00 AS Decimal(10, 2)), 111, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (112, N'Quần Jean Nữ Baggy Cotton Chiết Ly Ống', N'Quần jeans nữ chất liệu Denim Cotton USA mang đến cảm giác dễ chịu khi mặc

Được làm từ sợi bông tiêu chuẩn tốt nhất thế giới

Vải bền đẹp, chắc chắn, không phai màu, không co rút khi giặt

Kiểu dáng baggy chiết ly ống thoải mái và tôn dáng

Che được khuyết điểm đùi to, chân thô

Có thể kết hợp với nhiều trang phục khác nhau tạo sự trẻ trung, năng động

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(449000.00 AS Decimal(10, 2)), 112, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (113, N'Quần Jeans Nữ Skinny Lưng Cao Hack Dáng', N'Quần jeans nữ dáng skinny ôm sát cơ thể tôn trọn vòng 3 và đôi chân cực đẹp

Thành phần: 90% Cotton USA + 8% Polyester + 2% Lycra

Chất liệu co giãn 4 chiều thoải mái, mềm mịn, dễ chịu

Thích hợp phối với áo T-shirt, Polo, Sơ mi hay Tank-top để mặc được cả mùa đông và mùa hè

Sản phẩm có thể sử dụng được trong nhiều hoàn cảnh đi làm, đi chơi

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(449000.00 AS Decimal(10, 2)), 113, N'Women', 12)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (114, N'Quần Âu Nam Classic Thêu Yody', N'Chất liệu thoáng khí, thấm hút tốt

Thành phần:  78% Polyester + 18% Rayon + 4% Spandex

Quần mặc dày dặn, mềm mại, hạn chế nhăn và cử động thoải mái

Thiết kế basic hiện đại, sản phẩm quần âu mới của YODY

Kết hợp mặc với áo sơ mi, polo... sử dụng quanh năm khi đi làm, đi chơi

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(549000.00 AS Decimal(10, 2)), 114, N'Men', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (115, N'Quần Âu Nam Cạp Chun Ốp', N'Quần âu nam lịch lãm có thành phần sợi Rayon mang lại trải nghiệm thoải mái cho người mặc

Thành phần: 70% polyester, 26% Rayon, 4 %spandex

Rayon có nguồn gốc thiên nhiên nên thoáng khí và thấm hút cực tốt

Rayon đồng thời cũng là loại vải khó may, khó xử lý nên được kết hợp cùng với polyester để đem đến sự bền chắc cho chiếc quần

Những thớ vải dày dặn, bóng mượt mà vẫn giữ nguyên nét mềm mại, hạn chế nhăn nhàu đã làm nên chiếc quần âu lịch lãm tại YODY

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(559000.00 AS Decimal(10, 2)), 115, N'Men', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (116, N'Quần Âu Nam Cạp Chun Dây Rút', N'Thoáng khí và thấm hút tốt vì sợi vải phẳng, có rãnh - hơi ẩm sẽ dễ dàng di chuyển dọc và thoát ẩm nhanh.

Sợi vải mềm mại, co giãn giúp bạn luôn cảm thấy thoải mái khi sử dụng.

Thiết kế cạp chun, dây rút dễ dàng điều chỉnh linh hoạt

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(599000.00 AS Decimal(10, 2)), 116, N'Men', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (117, N'Quần Âu Nam Classic Phối Lé', N'Thành phần : 78% polyester + 18% viscose + 4% spandex

Thoáng khí và thấm hút tốt từ sợi phẳng, có rãnh trong vải.

Bề mặt bóng mượt: do bề mặt sợi bóng mượt hơn sợi tự nhiên. 

Mềm mịn luôn tạo cảm giác thoải mái cho người mặc

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 117, N'Men', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (118, N'Quần Âu Nam Nano Melange Thêu', N'Chất liệu Nano

Thành phần: 100% Polyester

Vải sử dụng công nghệ Nano xoắn nhiều sợi li ti thành một sợi.

Nano thuộc nhóm vải công nghệ mới,là bước đột phá trong ngành vải sợi thế giới

Vải dệt đôi 2 mặt là kiểu dệt khá phức tạp giúp định hình form dáng sản phẩm

Cấu trúc dệt khác biệt, giúp tạo cảm giác thoải mái.

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(549000.00 AS Decimal(10, 2)), 118, N'Men', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (119, N'Quần Âu Baggy Nữ Lưng Cao Vạt Chéo', N'Chất liệu: 92% Polyester + 8% Spandex

Thoải mái hoạt động với chất liệu co giãn

Sợi Poly bền chắc, thoáng mát, mềm mại

Thiết kế baggy cơ bản phù hợp với nhiều vóc dáng, tông màu nhã nhặn

Baggy sẽ giúp khắc phục những nhược điểm của cơ thể về vòng bụng và đôi chân

Quần có dây chun rời dễ dàng điều chỉnh

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 119, N'Women', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (120, N'Quần Âu Nữ Lưng Cao Ống Côn Co Giãn Tốt', N'Chất liệu: Vải gai lụa 100% polyester

Kiểu dáng: Quần ống côn

Quần ống côn cơ bản là 1 sản phẩm thông dụng cho các cô nàng văn phòng bởi kiểu dáng vô cùng dễ mặc

Chất liệu co giãn, mát và không nhăn nhàu

Form quần chuẩn với đường may chỉn chu

Thiết kế lưng cao giúp tôn dáng người mặc 

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 120, N'Women', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (121, N'Quần Tây Nữ Lưng Cao Đai Vuông', N'Chất liệu: Vải Tuytsi 100% polyester

Kiểu dáng: Quần ống côn

Quần ống côn cơ bản là 1 sản phẩm thông dụng cho các cô nàng văn phòng bởi kiểu dáng vô cùng dễ mặc, dễ phối kết hợp đồ,

Form quần chuẩn với tiêu chuẩn chất lượng cao của YODY

Tone màu cơ bản, nhã nhặn để có thể dễ dàng sử dụng trong nhiều hoàn cảnh

Chi tiết đai cạp giúp quần bớt nhàm chán và thêm phần tinh tế cho sản phẩm

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 121, N'Women', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (122, N'Quần Âu Nữ Lưng Cao Relax Pants Co Giãn Tốt', N'Thành phần: 79% Polyester + 17% Viscose + 4% Spandex

Thiết kế sang trọng cho vẻ ngoài chỉn chu khi đi làm, phong cách xuống phố

Chất liệu “thông minh” co giãn theo cả hai chiều: polyester giúp chiếc quần đứng dáng, kết hợp với viscose tạo nên độ mềm mại khi chạm vào da

Quần co dãn tốt, thoải mái trong mọi chuyển động

Vải hạn chế nhăn, tiết kiệm thời gian chăm sóc giúp bạn tận hưởng cuộc sống trọn vẹn hơn.

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 122, N'Women', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (123, N'Quần Âu Nữ Dáng Côn Đai Cơi', N'Thanh lịch và đầy tự tin cùng chiếc quần âu hiện đại này

Chất liệu 100% Poly

Quần có khả năng giữ form tốt, ít nhăn nên giúp chị em yên tâm về độ chỉn chu, lịch sự

Thiết kế dáng côn mặc thoải mái, tôn chân tôn dáng hiệu quả

Điểm nhấn với phần đai thiết kế mới ấn tượng

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 123, N'Women', 13)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (124, N'Quần Kaki Nam Basic Dáng Ôm Co Giãn
', N'Quần Kaki Nam Basic Dáng Ôm Co Giãn
', CAST(499000.00 AS Decimal(10, 2)), 124, N'Men', 14)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (125, N'Quần Kaki Nam Regular Thêu Cạnh Túi', N'Thành phần: 97% Cotton + 3% Spandex

Quần kaki nam dáng regular thoải mái, dễ mặc

Chất liệu kaki dày dặn, bền chắc

Thiết kế basic, phù hợp với nhiều dáng người châu Á

Thích hợp mặc đi làm, đi chơi, đi học

Phối đồ đa dạng cùng sơ mi, áo thun, áo polo, áo khoác…

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 125, N'Men', 14)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (126, N'Quần Kaki Nam Basic Năng Động', N'Chất liệu Kaki

Thành phần: 97% Cotton + 3% Spandex

Vải kaki dày dặn, co giãn đàn hồi tốt

Thiết kế cơ bản có túi chéo cạnh sườn, cúc khắc logo YODY

Khóa đồng chắc chắn và túi hậu cài cúc hai bên

Form dáng basic dáng ôm tôn dáng

Dễ dàng kết hợp với áo sowmi, áo thun.. mặc đi làm, đi chơi... 

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 126, N'Men', 14)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (127, N'Quần Kaki Nữ Lưng Cao Ống Ôm Co Giãn Nhẹ', N'Chất liệu: Kaki co giãn với thành phần chủ yếu là sợi cotton

Trang nhã, lịch sự nhưng vẫn có cảm giác mát mẻ, thoải mái

Chất liệu vải có cấu trúc vô cùng chắc chắn, bề mặt vải khít

Kaki thun co giãn dùng trong các sản phẩm nữ giới như quần, chân váy để tôn dáng và tạo sự thoải mái

Kiểu dáng lưng cao ống ôm cực kì tôn dáng, giúp đôi chân thon thả hơn.

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(399000.00 AS Decimal(10, 2)), 127, N'Women', 14)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (128, N'Quần Short Nam Kaki Ống Đứng Thể Thao', N'Chất liệu Kaki, thành phần: 60% Polyester+ 40% nylon

Kaki là chất liệu vải được dệt nên có cấu trúc vô cùng chắc chắn, bè mặt vải khít.

Chất liệu mang lại sự thoáng mát, dễ chịu, không gây gò bó vào cơ thể.

Vải khaki co giãn 4 chiều tạo sự thoải mái khi mặc

Thiết kế dáng suông, đơn giản, dễ mặc, dễ phối đồ

YODY - Look good. Feel good

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 128, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (129, N'Quần Short Nam Ống Đứng Gấu Lơ Vê', N'Thành phần: 100% polyester

Thoáng mát khi sử dụng

Bề mặt vải ít nhăn,  có thể giặt mái mà không lo đến bề mặt vải

Nhanh khô, mát, nhẹ

Đàn hồi, co giãn tốt

YODY - Look good. Feel good

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 129, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (130, N'Quần Short Nam Ống Đứng Trẻ Trung', N'Quần short nam kaki ngang gối

Sản phẩm basic thiết yếu dành cho mọi chàng trai

Cạp quần thiết kế bản to có đỉa mang lại sự chỉn chu có thể mặc ra ngoài cafe, hẹn hò

Túi hậu có cúc tiện lợi

Chất vải kaki mềm nhẹ, thoải mái, thích hợp với điều kiện thời tiết nhiệt đới 

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 130, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (131, N'Quần Short Nam Kaki Ống Đứng Lịch Lãm', N'Chất liệu Kaki mềm nhẹ, thoải mái

Quần short nam thiết kế cơ bản dài ngang gối

Cạp quần to bản có đỉa tiện lợi

Túi cúc phía sau có thể đựng đồ nhỏ gọn như ví, chìa khóa

Phom dáng trẻ trung, lịch lãm tạo sự chỉn chu, thích hợp mặc ở nhà hay ra ngoài cafe, hẹn hò

Sản phẩm basic dành cho mọi chàng trai

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 131, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (132, N'Quần Short Thun Nam Thể Thao Năng Động', N'Chất liệu vải 92% Polyester + 8% Spandex

Thoáng mát, nhẹ nhàng, bền màu nhờ sợi vải được dệt bởi công nghệ tiên tiến

Thấm hút nhanh, thông thoáng

Co giãn thoải mái, thích hợp cho mọi chuyển động của cơ thể với cường độ cao

Thoải mái giặt máy nhờ sự bền bỉ của chất liệu vải

Form ngang gối, bản cạp to khỏe khoắn, túi cạnh sườn có khóa cùng với sườn thân sau phối phản quang vô cùng nổi bật và tinh tế

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 132, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (133, N'Quần Short Thể Thao Nam Lịch Lãm Thời Trang', N' Thành phần : 92% Polyester + 8% Spandex

Thoải mái vận động mà vẫn thoáng mát, nhẹ nhàng

Thấm hút mồ hôi nhanh chóng cùng khả năng co giãn thoải mái, thích hợp cho mọi chuyển động của cơ thể

Không lo nhăn nhàu, thoải mái giặt máy

Thiết kế in logo nổi bật ở gấu quần

Form dáng ngang gối thoải mái sử dụng mọi hoàn cảnh

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(359000.00 AS Decimal(10, 2)), 133, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (134, N'Quần Short Tây Nam Thể Thao Năng Động', N'Quần short thể thao nam đa đụng dành cho cánh mày râu

Thành phần: 92% Polyester + 8% Spandex

Thiết kế cạp cài cúc có chi tiết phối nổi tại cạp thân trước, quần có in logo nổi bật

Túi chéo cạnh sườn vừa thời trang lại tiện để đồ

Phom dáng ngang gối phù hợp cho chàng có thể sử dụng hàng ngày

Chiếc quần vừa chỉn chu vừa thoải mái

Mix cùng polo, sơ mi, áo phông tạo nên vẻ ngoài năng động, trẻ trung cho người mặc

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 134, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (135, N'Quần Short Nam Thể Thao Quốc Dân
', N'Quần short nam thể thao YODY

Thành phần: 92% Polyester + 8% Spandex

Thiết kế cạp chun cả vòng bản to vô cùng khỏe khoắn

Dây rút chất lượng bền đẹp, có in logo chính hãng tại đầu dây

Túi cạnh sườn có khóa kéo vô cùng thuận tiện cho các anh

Thiết kế thể thao, khỏe khoắn, chất liệu mềm mại, nhẹ nhàng phù hợp vận động

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(179000.00 AS Decimal(10, 2)), 135, N'Men', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (136, N'Quần Short Nữ Kaki Suông Trơn', N'Chất liệu sản phẩm: Vải kaki 

Đường may và sợi vải chắc chắn, thân thiện với người dùng

Quần short nữ YODY mềm, thấm hút tốt mang lại trải nghiệm thông thoáng cho mùa hè

Kiểu dáng suông khỏe khoắn, thiết kế basic không cầu kỳ và rườm rà giúp chị em thoải mái vận động

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 136, N'Women', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (137, N'Quần Lửng Nữ Lưng Cao Ống Rộng', N'Chất liệu: Denim

Vải DENIM làm từ sợi cotton tự nhiện nên có khả năng thấm hút mồ hôi rất tốt, giúp điều hòa nhiệt độ cơ thể

Sản phẩm mặc thoáng mát, phù hợp với điều kiện thời tiết mùa xuân, mùa hè

Chất liệu vải jean dày đẹp, có độ cứng cáp, giúp tôn dáng người mặc

Thiết kế trẻ trung, cá tính, lưng cao ống rộng giúp nàng tự tin hack dáng và thoải mái di chuyển

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(349000.00 AS Decimal(10, 2)), 137, N'Women', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (138, N'Quần Short Jean Nữ Ống Rộng Năng Động', N'Quần short nữ ngắn chất liệu jean trẻ trung

Thành phần: 99% Cotton + 1% Spandex

Thiết kế dáng ngắn, xắn gấu năng động và cơ bản

Sở hữu chiếc quần này, nàng có thể dễ dàng kết hợp mặc cùng các kiểu áo như polo, t-shirt, tank-top... để đi chơi hay vận động một cách thoải mái

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(349000.00 AS Decimal(10, 2)), 138, N'Women', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (139, N'Quần Short Nữ Xắn Gấu Basic', N'Chất liệu denim, thành phần: 100% cotton

Thấm hút mồ hôi rất tốt, giúp điều hòa nhiệt độ cơ thể, thoáng mát

Chất liệu vải dày đẹp, có độ cứng cáp, giúp tôn dáng người mặc

Quần short được phối túi hai bên cực kỳ tiện dụng để dễ dàng đựng các vật nhỏ 

Chi tiết xắn gấu trẻ trung cá tính cùng đường may chắc chắn giúp nàng tự tin di chuyển, vận động

YODY - Look good. Feel good.', CAST(349000.00 AS Decimal(10, 2)), 139, N'Women', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (140, N'Quần Short Jeans Nữ Ống Đứng Trên Gối', N'Quần short jeans nữ chất liệu Denim dày dặn

Thành phần: 98.5% Cotton + 1.5% Spandex

Cotton USA cao cấp nên độ bền cao, mềm mại, thông thoáng và thấm hút tốt

Sợi Spandex giúp sản phẩm có độ co giãn, đàn hồi tốt

Kiểu dáng ống đứng trên gối tạo cảm giác thoải mái tối đa nhưng vẫn kín đáo

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(249000.00 AS Decimal(10, 2)), 140, N'Women', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (141, N'Quần Short Trẻ Em In Chữ YD', N'Chất liệu da cá mỏng

Thành phần: 58% Cotton + 39% Polyester + 3% Spandex

Vải có sự kết hợp của sợi cotton, polyester & spandex tạo nên đặc tính ưu việt cho sản phẩm

Thoải mái tham gia các hoạt đông vui chơi nhờ chất vải thoáng mát, mềm mịn và thấm hút tốt

Co giãn tốt, giữ form cùng độ bền cao, bền màu.

Hình in lưới YD tạo điểm nhấn cá tính

Quần cạp chun cùng dây rút tiện lợi khi sử dụng.

YODY - Look good, Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 141, N'Children', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (142, N'Quần Short Nỉ Bé Trai Có Túi Hộp', N'Quần short trẻ em, thoải mái năng động cho bé mặc mỗi ngày

Thành phần: 58% Cotton + 39% Polyester + 3% Spandex

Thiết kế cạp chun tiện lợi, phù hợp với đa dạng vóc dáng của bé

Túi ốp khoẻ khoắn, đa năng tạo điểm nhấn riêng cho chiếc quần

Sản phẩm có 3 màu dễ mặc, dễ phối cho ba mẹ và bé lợi chọn: Xanh, Grey, Navy

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(249000.00 AS Decimal(10, 2)), 142, N'Children', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (143, N'Quần Short Trẻ Em Khóa Dọc', N'Thành phần: 58% Cotton + 39% Polyester + 3% Spandex

Sự kết hợp của sợi cotton và polyester tạo nên đặc tính ưu việt

Thấm hút tốt, Thoáng mát, mềm mịn tạo cảm giác thoải mái cho bé

Năng động với chất liệu co giãn cùng độ bên cao

Túi kéo zip tiện lợi tạo điểm nhấn

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 143, N'Children', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (144, N'Quần Short Trẻ Em In Logo Yody Kid', N'Thành phần chất liệu:  58% Cotton + 39% Polyester + 3% Spandex

Vải mặc thoáng mát, mềm mịn, thấm hút tốt

Sản phẩm co giãn tốt, giữ phom để bé vận động thoải mái suốt cả ngày

Kiểu dáng basic, dễ mặc, dễ phối, thích hợp cho thời tiết mùa hè

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 144, N'Children', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (145, N'Quần Lỡ Ôm Cho Bé Gái Basic, Thoáng Mát', N'Quần sooc lỡ dành cho bé gái chất liệu co giãn 4 chiều, thoáng mát, thấm hút mồ hôi tốt

Thành phần: 97% Cotton + 3% Spandex

Kiểu dáng ôm cơ bản có độ dài trên gối

Chi tiết mác nhận diện ở gấu tạo điểm nhấn trẻ trung

Màu sắc tươi sáng có thể kết hợp cùng áo thun

Sản phẩm thích hợp cho bé mặc ở nhà, đi chơi và đi học

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 145, N'Children', 15)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (146, N'Quần Legging Len Trẻ Em Gấu Phối Màu', N'Quần legging bé gái - món đồ thiết yếu trong mọi mùa thu đông

Chất liệu 65% rayon + 35% nylon tạo nên sự mềm mại, tăng độ bền và khả năng giữ ấm cho sản phẩm 

Quần có độ co giãn đàn hồi rất tốt nên bé thoải mái di chuyển

Phối màu ở quần giúp tạo sự khác biệt và cũng là gợi ý để ba mẹ giúp bé phối cùng những chiếc áo, chiếc váy có tone màu tương ứng

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 146, N'Children', 16)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (147, N'Quần Legging Len Trẻ Em Basic', N'Chất liệu: 65% rayon + 35% nylon

Quần legging len dành cho bé gái, có khả năng co giãn đàn hồi cực tốt để bé thoải mái vận động cả ngày dài

Họa tiết phối màu, kiểu dáng legging, xắn gấu thời trang

Sản phẩm có thể mặc kết hợp với các loại áo dáng dài chùm mông, hoặc mặc trong váy để giữ ấm cơ thể cho bé

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 147, N'Children', 16)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (148, N'Quần Legging Len Cho Bé Siêu Mềm Mại', N'Thành phần vải: 65% rayon + 35% nylon

Quần len trẻ em co giãn đàn hồi tốt, mang đến sự thoải mái khi sử dụng

Thiết kế ôm sát vừa giúp giữ ấm, vừa dễ phối đồ

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(169000.00 AS Decimal(10, 2)), 148, N'Children', 16)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (149, N'Quần Dài Kid Nhỏ Khóa Gối', N'Vải nỉ

Thành phần : 87% Polyester + 8% Rayon + 5% Spandex

Vải nỉ 2 mặt mềm mại, thoải mái. Thấm hút tốt, kiểm soát độ ẩm. Khô nhanh.

Co giãn đàn hồi giữ form. 

Quần bo gấu, với điểm nhấn là đường súp được in chữ và lé phối ngang gối tạo sự phá cách tinh nghịch khoẻ khoắn cho bé.

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(269000.00 AS Decimal(10, 2)), 149, N'Children', 31)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (150, N'Quần Nỉ Trẻ Em Bổ Thân', N'Thành phần: 70% Cotton + 30% Spandex

Vải có sự kết hợp của sợi cotton và polyester nên mềm mịn, thấm hút tốt, giữ phom, độ bền cao

Quần nỉ giữ ấm tốt cho bé trong mùa đông, thông thoáng không gây bí da

Cạp chun điều chỉnh theo cơ thể giúp bé thoải mái trong từng chuyển động

Thiết kế bổ thân tạo điểm nhấn khỏe khoắn

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 150, N'Children', 31)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (151, N'Áo Ba Lỗ Nam 100% Cotton Siêu Mềm Siêu Thoáng', N'Thành phần: 100% Cotton

Phiên bản nâng cấp từ chất liệu tới kiểu dáng

Thiết kế năng động, trẻ trung phù hợp với mọi vóc dáng.

Cải tiến về chất liệu mềm mại, thấm hút và mát hơn

Co giãn, có độ đàn hồi tối đa

Chất liệu vải thể thao không quá dày

Đem lại cảm giác thoải mái cho người mặc

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(99000.00 AS Decimal(10, 2)), 151, N'Men', 17)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (152, N'Áo Ba Lỗ Nam Cotton 100%', N'Thiết kế năng động, trẻ trung phù hợp với mọi vóc dáng.

Thành phần: 100% Cotton

Thấm hút mồ hôi tốt, thoáng mát. 

Co giãn, có độ đàn hồi tối đa. 

Chất liệu vải thể thao không quá dày. 

Đem lại cảm giác thoải mái cho người mặc. 

YODY - Look good. Feel good!

Sản xuất tại Việt Nam', CAST(79000.00 AS Decimal(10, 2)), 152, N'Men', 17)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (153, N'Áo Thu Đông Nữ Cổ 3cm Giữ Nhiệt', N'Áo có thành phần chất liệu gồm: 94% Viscose + 6% Spandex

Co giãn, giữ ấm, bề mặt vải mịn đem lại cảm giác thoải mái dễ chịu, ngăn chặn được các kích ứng trên da nhạy cảm

Áo có form dáng ôm giúp tôn dáng cho người mặc

Màu sắc thanh lịch, có thể kết hợp cùng quần nỉ hoặc quần jeans

Sản phẩm thích hợp mặc ở nhà, đi làm và đi chơi vào mùa đông

YODY - Look good. Feel good.', CAST(269000.00 AS Decimal(10, 2)), 153, N'Women', 18)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (154, N'Quần Lót Nam Boxer Dệt Liền Mềm Mại', N'Quần lót nam dáng boxer dệt liền mềm mại - bạn đồng hành tuyệt vời của cánh mày râu

Chất liệu polyamide bền và chắc chắn không lo bị rách

Thành phần:  90% Polyamide, 10% Spandex

Có khả năng thấm hút tốt mang lại sự thoáng mát khi mặc

Kháng khuẩn, khử mùi tự nhiên an toàn, dễ chịu

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(199000.00 AS Decimal(10, 2)), 154, N'Men', 19)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (155, N'Quần Lót Nam Tam Giác Dệt Liền Mềm Mại
', N'Quần lót nam YODY sử dụng chất liệu Polyamide bền chắc, mềm mại

Thành phần:  90% Polyamide, 10% Spandex

Kiểu dáng tam giác tiện dụng

Co giãn thoải mái, thông thoáng khi sử dụng

Cho cảm giác dễ chịu thuận tiện mỗi ngày

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(179000.00 AS Decimal(10, 2)), 155, N'Men', 19)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (156, N'Áo 3 Lỗ Nữ Thun Tăm Hách Dáng', N'Thành phần: 95% Cotton + 5% Spandex

Áo balo nữ mềm mại, mịn màng

Bề mặt vải đều đẹp, không xù lông vón cục

Co giãn đàn hồi tốt, không gây khó chịu cho cơ thể

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(129000.00 AS Decimal(10, 2)), 156, N'Women', 20)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (157, N'Áo Hai Dây Cotton Co Giãn Mềm Mịn', N'Chất liệu Cotton, thành phần:  95% Cotton, 5% Spandex

Áo kiểu dáng 2 dây co dãn tốt, thấm hút hiệu quả và an toàn với làn da

Sản phẩm thiết kế thoáng mát, dễ dàng kết hợp với nhiều loại trang phục

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(99000.00 AS Decimal(10, 2)), 157, N'Women', 20)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (158, N'Áo 3 Lỗ Nữ Thun Rip Cơ Bản', N'Áo 3 Lỗ Nữ Thun Rip Cơ Bản mang đến cho bạn sự thoải mái, tiện lợi

Thành phần: 95% Polyester + 5% Spandex

Một item đa năng dành cho phái đẹp

Chất vải thun mềm, thấm hút mồ hôi tốt

Co giãn đàn hồi với kiểu dáng ôm năng động, khoẻ khoắn

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(149000.00 AS Decimal(10, 2)), 158, N'Women', 20)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (159, N'Áo Ba Lỗ Nữ Cotton Hack Dáng', N'Chất liệu zib cotton

Thành phần: 95% Cotton + 5% Spandex

Vải co dãn cực tốt, mềm mại, thoải mái và thấm hút

Kiểu dáng ôm sát cơ thể, ba lỗ khoẻ, năng động

Kết hợp cùng quần jean, quần nỉ và áo khoác, blazze cùng chân váy với phong cách nữ tính, cá tính

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(129000.00 AS Decimal(10, 2)), 159, N'Women', 20)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (160, N'Áo Hai Dây Nữ Lưng Đan Chéo Trẻ Trung', N'Thành phần: 65% Rayon + 35% Nylon

Vải mềm mại, thông thoáng, mát tay

Chất liệu bền, co giãn nhẹ

Kiểu dệt jacquard hoạ tiết hiện đại

Mẫu áo đa năng với độ vừa vặn và cảm giác thoải mái trên từng cử động

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(249000.00 AS Decimal(10, 2)), 160, N'Women', 20)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (161, N'Combo 3 Quần Chip Nữ Cơ Bản Siêu Mềm Mướt', N'Thành phần: 71% Polyamide + 29% Elastane Thoải mái với chất liệu mềm mát, mịn màng Co giãn đàn hồi tốt, phù hợp với chuyển động của cơ thể Độ bền cao, hạn chế xù lông vón cục Thấm hút tốt, thông thoáng Sản xuất tại Việt Nam YODY - Look good. Feel good', CAST(259000.00 AS Decimal(10, 2)), 161, N'Women', 21)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (162, N'Quần Chip Nữ Cơ Bản Siêu Mềm Mướt', N'Quần lót nữ mềm mại dành cho phái đẹp

Chất liệu vải mềm với thành phần sợi gồm 71% Polyamide và 29% Spandex

Chiếc quần lót cho cảm giác mặc mềm mát, mịn màng

Co giãn đàn hồi tốt, phù hợp với chuyển động của cơ thể

Độ bền cao, hạn chế xù lông vón cục

Thấm hút tốt, thông thoáng

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(89000.00 AS Decimal(10, 2)), 162, N'Women', 21)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (163, N'Thắt Lưng Nam Da Bò Cạnh Viền Kim Loại', N'Mặt dây làm từ kim loại không gỉ, phần khóa trượt tự động giúp điều chỉnh dây lưng dễ dàng.

Thiết kế rất đơn giản nhưng không kém phần tinh tế

Màu sắc ấm áp, tạo cảm giác ấn tượng và gần gũi với người sử dụng.

Phù hợp với nhiều loại trang phục khác nhau, tôn vẻ nam tính, lịch thiệp cho phái mạnh.

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 163, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (164, N'Thắt Lưng Nam Da Bò Mặt Bọc Viền Kim', N'Thắt lưng nam làm từ chất liệu da bò cao cấp, mềm mại

Độ bền cao, chắc chắn mang đến sự thuận tiện cao nhất

Hạn chế tình trạng bong tróc sau một thời gian sử dụng

Kiểu dáng hiện đại, mặt bọc viền kim loại sang trọng nam tính

Sản phẩm gia công tỉ mỉ từng đường may, dùng hay làm quà tặng đều rất đẹp

Phù hợp đi làm công sở, đi chơi, dạo phố, dự tiệc

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 164, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (165, N'Thắt Lưng Nam Da Bò Mặt Vân Sọc Phối Viền', N'Thắt lưng nam da bò - phụ kiện thiết yếu cho nam giới

Thành phần gồm Da bò và PU tráng phủ tạo độ bền cho sản phẩm

Sử dụng Da thật có độ bền từ 1-3 năm

Thiết kế hoạ tiết kẻ gingham mang lại cảm giác cổ điển tinh tế cho phụ kiện này

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 165, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (166, N'Thắt Lưng Nam Da Bò Mặt Gingham', N'Thắt lưng nam da bò - phụ kiện thiết yếu cho nam giới

Thành phần gồm Da bò và PU tráng phủ tạo độ bền cho sản phẩm

Sử dụng Da thật có độ bền từ 1-3 năm

Thiết kế hoạ tiết kẻ gingham mang lại cảm giác cổ điển tinh tế cho phụ kiện này

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 166, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (167, N'Thắt Lưng Nam Mặt Vân Da Cá Sấu', N'Thắt lưng nam chất liệu da bò được nam giới lựa chọn là phù kiện yêu thích tại YODY

Sản phẩm sử dụng Da thật với độ bền cao từ 1-3 năm

Thiết kế hoạ tiết vân da cá sâu sang trọng, hiện đại

YODY Khuyến cáo, trong quá trình sử dụng nên tránh cọ sát vào những bề mặt ráp, sắc nhọn

Bảo quản nơi khô ráo, thoáng mát để kéo dài tuổi thọ cho thắt lưng

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 167, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (168, N'Thắt Lưng Nam Mặt Khoá Tự Động', N'Chất liệu da bò cao cấp

Thành phần:  Da bò + PU tráng phủ

Da có đặc tính mềm, dẻo, không có hóa chất độc hại cùng với thiết kế trẻ trung hợp thời trang và vô cùng độc đáo

Mặt khóa chất liệu hợp kim kẽm nguyên khối 

Thiết kế tinh tế, hiện đại và sang trọng.

Mắt khóa tự động, dễ dàng điều chỉnh độ rộng

Đường chỉ may tỉ mỉ, chắc chắn.  Phù hợp với mọi loại trang phục, hoàn cảnh

YODY - Look good. Feel good', CAST(499000.00 AS Decimal(10, 2)), 168, N'Men', 26)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (169, N'Dép Sandal Nữ Khuy Đai Thời Thượng', N'Chất liệu da PU cao cấp

Đế trong êm chân, chất liệu bền - đẹp - giá tốt

Da PU thân thiện với môi trường, độ dai và chắc tương tự như da thật

Chất liệu mềm mịn, dễ làm sạch và chống thấm nước tốt

Thiết kế mũi vuông trẻ trung, hiện đại

YODY - Look good. Feel good.', CAST(449000.00 AS Decimal(10, 2)), 169, N'Women', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (170, N'Dép Cao Gót Nữ Dây Chéo Mũi Vuông', N'Giày nữ làm từ chất liệu da PU cao cấp

Chất liệu dai chắc như da thật, thân thiện với môi trường

Độ bền từ 1.5 năm - 2 năm không bong tróc, nổ da

Thiết kế mũi vuông, dây chéo hiện đại

Quai mảnh thoáng chân, thanh lịch

Đế trong êm chân, bền, đẹp

YODY - Look good. Feel good.', CAST(449000.00 AS Decimal(10, 2)), 170, N'Women', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (171, N'Giày Nữ Gót Kim Cách Điệu Nữ Tính', N'Giày nữ chất liệu da PU có độ bền cao

Thiết kế phần đế vuông cao 6.5cm

Lót trong mềm mại, êm ái giúp nâng đỡ đôi chân

Mũi nhọn tạo cảm giác thanh lịch nữ tính

Giúp đôi chân trông thon gọn và thuôn dài hơn

Kiểu dáng basic thích hợp với nhiều độ tuổi khác nhau

Gót giày vững chắc, nâng chiều cao nhưng vẫn thuận tiện cho việc di chuyển

Có thể mix phong cách nhẹ nhàng,lịch sự hoặc thanh lịch

YODY - Look good. Feel good.', CAST(569000.00 AS Decimal(10, 2)), 171, N'Women', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (172, N'Giày Nữ Hở Hậu Gót Vuông 7cm', N'Thành phần: Da PU

Giày nữ thiết kế phần đế vuông

Mũi nhọn tạo cảm giác thanh lịch nữ tính

Giúp đôi chân có hiệu ứng nhìn thon gọn và dài hơn

Kiểu dáng basic thích hợp với nhiều độ tuổi khác nhau

Có thể mix phong cách nhẹ nhàng,lịch sự hoặc thanh lịch.

Chiều cao gót 7cm

YODY - Look good. Feel good.', CAST(499000.00 AS Decimal(10, 2)), 172, N'Women', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (173, N'Dép Sandal Nữ Mũi Vuông Quai Chéo', N'Sandal nữ làm từ chất liệu da PU cao cấp, gót cao 5cm

Đế trong êm chân, chất liệu bền - đẹp - giá tốt

Da PU thân thiện với môi trường, độ dai và chắc tương tự như da thật

Thiết kế mũi vuông trẻ trung, hiện đại

Kiểu dáng sandal với quai mảnh vừa thoáng chân vừa thanh lịch

YODY - Look good. Feel good.', CAST(489000.00 AS Decimal(10, 2)), 173, N'Women', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (174, N'Giày Lười Nam Moccasin Da Mill Đai Khóa', N'Chất liệu 100% da bò

Chất liệu da rất mịn cảm nhận được độ mịn hơn hẳn da bò hạt in

Da mill bền bỉ theo năm tháng

Lớp lót giày mềm mại, thấm hút mồ hôi, cùng đế cao su êm ái, có rãnh ô vuông cách điệu chống trơn trượt

Mang đến cảm giác thoải mái, vững chãi trên từng bước đi

Thích hợp cho những ai chuộng sự linh hoạt, dễ dàng biến hóa phong cách từ casual đến sang trọng

YODY - Look good. Feel good', CAST(989000.00 AS Decimal(10, 2)), 174, N'Men', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (175, N'Giày Nam Penny Loafer Da Bò Nappa Cao Cấp', N'Giày nam loafer da bò nappa cao cấp

Thành phần:  100% da bò

Hạn chế nếp nhăn, mềm dẻo tạo sự thoải mái cho bàn chân

Lót giày êm, mềm mại tối đa giúp đôi chân ở trạng thái dễ chịu trong suốt quá trình sử dụng

Thiết kế thanh lịch, hoàn thiện sự chỉn chu, lịch lãm cho người dùng

Thích hợp để phối với set đồ công sở

YODY - Look good. Feel good.', CAST(1289000.00 AS Decimal(10, 2)), 175, N'Men', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (176, N'Giày Nam Derby Da Bò Nappa Sang Trọng', N'Chất liệu da Bò Nappa

Thành phần:  100% da bò

Da Nappa cao cấp, hạn chết nếp nhắn, siêu mềm

Thoải mái cho đôi chân trong thời gian gian dài nhờ Lót giày êm, mềm mại tối đa

Đế đúc cao su nguyên khối chắc chắn, bền bỉ

Vân đế chống trượt không mài mòn

Thiết kế thanh lịch, lịch lãm và năng cho người sử dụng

YODY - Look good. Feel good.', CAST(1289000.00 AS Decimal(10, 2)), 176, N'Men', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (177, N'Giày Thể Thao Nam YODY', N'Giày thể thao nam đế dày năng động, thời trang

Phom dáng thoải mái, chi tiết phối trẻ trung

Phần đế dày giúp tăng chiều cao cho người sử dụng

Dây buộc đồng bộ với màu giày

Giày có thể kết hợp cùng nhiều trang phục thích hợp mặc đi chơi, đi làm

YODY - Look good. Feel good.', CAST(1189000.00 AS Decimal(10, 2)), 177, N'Men', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (178, N'Giày Sneaker Nam Basic Trẻ Trung', N'Giày sneaker nam năng động, khỏe khoắn

Chất liệu 100% Polyester Microfiber

Form dáng thoải mái, chi tiết phối trẻ trung năng động

Giày có chất liệu da microfiber đàn hồi tốt, chống nhăn xước gãy bề mặt da

Đế giày cao su nguyên chất có độ bám dai bền bỉ, lót tẩy Ortholite hút ẩm chống hôi chân

Giày có thể kết hợp cùng nhiều trang phục thích hợp mặc đi chơi, đi làm.

YODY - Look good. Feel good.', CAST(989000.00 AS Decimal(10, 2)), 178, N'Men', 28)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (179, N'Túi Nữ Canvas Nice Human', N'Túi vải nữ be a nice human thời trang chất vải dày dặn, chắc chắn

Thành phần:  Canvas 65%cotton, 35%polyester

Thiết kế đơn giản, trẻ trung và đa năng

Với 2 màu cơ bản là Be và Đen, túi rất dễ phối với nhiều loại trang phục khác nhau

Phía trên có khoá kéo giúp giữ đồ an toàn không lo rơi, đổ

Có thể dùng khi đi dạo phố, cafe, đi học, đi làm...

YODY - Look good. Feel good.', CAST(129000.00 AS Decimal(10, 2)), 179, N'Women', 27)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (180, N'Túi Nữ Canvas Baggage', N'Chất liệu vải Canvas

Thành phần : 65% Cotton + 35% Polyester

Vải canvas dày dặn, phù hợp sử dụng quanh năm

Túi có không gian lớn chứa nhiều đồ

Khóa kéo ở miệng túi, họa tiết in hình

YODY - Look good. Feel good.', CAST(109000.00 AS Decimal(10, 2)), 180, N'Women', 27)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (181, N'Túi Nữ Canvas Coffee', N'Túi vải canvas thiết kế basic, đa năng

Chất vải canvas dày dặn, phù hợp sửu dụng quanh năm

Thành phần: 65% Cotton, 35% Polyester

Thiết kế hình in Coffee xinh xắn, hiện đại

Màu sắc cơ bản Đen và Be dễ phối đồ

YODY - Look good. Feel good.', CAST(119000.00 AS Decimal(10, 2)), 181, N'Women', 27)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (182, N'Túi Unisex Đeo Chéo Phối Nắp Túi', N'Túi đeo chéo unisex phối nắp túi thời trang dành cho cả nam và nữ

Kích thước vừa vặn để được nhiều vật dụng như: điện thoại, ví, sổ, bút

Nắp đậy kết hợp với khoá cài bảo vệ đồ dùng bên trong không bị rơi trong quá trình sử dụng

Dạng hình hộp, dây đeo là dây dù mềm, chắc chắn, móc dây có thể xoay tròn tiện lợi

Thích hợp đeo đi chơi, du lịch, dã ngoại

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(429000.00 AS Decimal(10, 2)), 182, N'Men', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (183, N'Mũ Bucket Yody Sport', N'Chiếc Bucket Hat với phối màu trung tính

Thành phần: 100% Cotton

Thiết kế đơn giản, nhấn mạnh logo YODY SPORT mang nhiều năng lượng tích cực

Phù hợp cho những người trẻ thể hiện cá tính

Phối đồ basic cũng mũ sẽ giúp bạn thể hiện được sự đơn giản, tự do của mình

YODY - Look good. Feel good.', CAST(199000.00 AS Decimal(10, 2)), 183, N'Men', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (184, N'Mũ Nam Vải Bò', N'Chất liệu vải cotton mềm

Thành phần: 100% Cotton

Thấm hút tốt, thông thoáng da đầu

Kết cấu chắc chắn, đường may tỉ mỉ, giặt nhanh khô

Mang đến cho người dùng cảm giác thoải mái và thuận tiện khi sử dụng

YODY - Look good. Feel good.', CAST(169000.00 AS Decimal(10, 2)), 184, N'Men', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (185, N'Túi Unisex Đeo Chéo Dệt Hoạ Tiết', N'Túi đeo chéo dệt hoạ tiết thời trang và phong cách

Thành phần: 75%cotton, 25%polyeste

Thiết kế unisex dùng được cho cả nam và nữ

Kích thước túi: 14*18.5*9cm

Quai bản to không đau vai

Dáng hộp cứng cáp, kèm dây đeo tiện lợi

Dễ dàng phối với nhiều trang phục sử dụng hằng ngày, đi chơi, dạo phố, du lịch

YODY - Look good. Feel good.', CAST(399000.00 AS Decimal(10, 2)), 185, N'Men', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (186, N'Túi Unisex Đeo Chéo Nắp Nam Châm', N'Thành phần: Polyamide 65% + PP 35%

Túi đeo chéo chứa được các vật dụng như: sách, điện thoại, bút, ví, ô gấp tròn…

Thoải mái sử dụng túi đeo để đi chơi, du lịch, dã ngoại, phượt

Tránh tiếp xúc trực tiếp với nước lâu hoặc để trong môi trường ẩm thấp

Tránh sử dụng các vật nhọn với túi vì dễ gây rách, xước

Thường xuyên vệ sinh túi

YODY - Look good. Feel good.', CAST(459000.00 AS Decimal(10, 2)), 186, N'Men', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (187, N'Kính Râm Phân Cực Gọng Kim Loại Nhỏ No.02', N'Kính râm phân cực gọng kim loại nhỏ chắc chắn

Mắt kính phân cực chống tia UV400 giúp bảo vệ mắt

Tròng kính PC có khả năng chống va đập cao, tròng mỏng, khó vỡ, an toàn

Gọng kính chất liệu TR cứng cáp nhưng không nặng khi đeo

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 187, N'Women', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (188, N'Kính Râm Phân Cực Gọng Kim Loại Nhỏ', N'Chất liệu gọng kính kim loại

Đệm mũi silicon êm ái giúp bạn thoải mái khi mang

Mắt kính phân cực chống tia UV400

Tròng kính PC (chống va đập cao, tròng mỏng, khó vỡ, an toàn, chống tia UV tốt)

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(369000.00 AS Decimal(10, 2)), 188, N'Women', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (189, N'Kính Râm Phân Cực Gọng Kim Loại Cao Cấp', N'Chất liệu gọng kính nhựa dẻo TR90

Thoải mái hoạt động nhờ chất liệu gọng bền và nhẹ

Mắt kính phân cực chống tia UV400

Tròng kính phân cực TAC ( phủ một lớp phim phân cực, giúp hấp thụ tia sáng chói, thanh lọc ánh sáng, mang đến hiệu ứng hình ảnh chân thực và rõ nét hơn)

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(499000.00 AS Decimal(10, 2)), 189, N'Women', 30)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (190, N'Đầm Trẻ Em In Họa Tiết Bèo Ngực', N'Váy đầm cho bé gái chất liệu vải Muslin 100% cotton  

Do được dệt từ những sợi bông tốt nhất cùng với nhiều lớp mềm nên vải Muslin có đặc tính rất mềm, nhẹ và thoáng khí

Trọng lượng nhẹ nhưng cầm trên tay vải rất chắc chắn và có độ nhún, tạo nên được những nếp gấp đặc trưng của vải.

Sản phẩm dệt từ bông tự nhiên nên rất lành tính và an toàn với da nhạy cảm.

Thiết kế dễ thương xinh xắn cho các bạn nhỏ mặc đi học, đi chơi

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(299000.00 AS Decimal(10, 2)), 190, N'Children', 25)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (191, N'Váy Bé Gái Hở Lưng Buộc Nơ', N'Váy trẻ em hở lưng buộc nơ

Thành phần: 35% Viscose + 65% Cotton

Chất vải mềm, thông thoáng đứng phom, có sự kết hợp 2 thành phần tự nhiên là Cotton và Viscose giúp vải mềm mại, thấm hút tốt, an toàn cho làn da

Kiểu dáng suông sát nách xoè dưới điệu đà, thoải mái

Điểm nhấn là phần hở lưng thắt nơ cách điệu phía sau

Rất thích hợp để bé mặc trong mùa hè nóng bức

Váy có thể diện đi chơi, ở nhà, du lịch

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(269000.00 AS Decimal(10, 2)), 191, N'Children', 25)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (192, N'Váy Thun Cho Bé In Tràn Thỏ', N'Váy thun trẻ em cực thoải mái và thân thiện môi trường

Chất liệu bột ngô, thành phần: 80% Cotton + 20% Iscra - Softcool

Váy mặc mềm mát, an toàn với làn da bé

Kiểu dáng suông rộng rãi, cộc tay thoáng khí

Hình in tràn thỏ vô cùng đáng yêu

Váy bé gái năng động, thích hợp mặc đi chơi, dã ngoại, ở nhà

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(199000.00 AS Decimal(10, 2)), 192, N'Children', 25)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (193, N'Váy Trẻ Em Kẻ Caro Dáng Suông', N'Đầm bé gái phối cổ kẹp bèo đáng yêu

Thành phần:  50% Polyester S''Cafe , 50% Recycle PET

Chất liệu vải thấm hút tốt, mềm mại, an toàn với da bé

Thiết kế dáng rộng giúp bé thoải mái theo từng chuyển động

Bo chun ở tay điệu đà, dễ dương

Hoạ tiết kẻ ô to dễ mặc, phù hợp trong nhiều hoàn cảnh

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(349000.00 AS Decimal(10, 2)), 193, N'Children', 25)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (194, N'Đầm Bé Gái Gấu Nhún Chấm Bi', N'Thành phần: 60% Cotton + 35% Polyester + 5% Spandex

Váy đầm dành cho bé gái 2-6 tuổi

Chất liệu nỉ da cá mềm mại, ấm áp mặc được cả trong màu thu đông

Dáng chữ A, họa tiết chấm bi cùng gấu váy nhún bèo tạo nét đáng yêu, dễ thương cho các bé

Thích hợp phối cùng quần tất mặc ở nhà hoặc đi chơi đều đẹp

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(329000.00 AS Decimal(10, 2)), 194, N'Children', 25)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (195, N'Dép Sandal Trẻ Em Logo Cao Su', N'Dép sandal cho bé làm từ da PU có độ bền cao

Chất liệu dễ dàng lau chùi, làm sạch với nước tránh được tình trạng bị ẩm hay nấm mốc

Trọng lượng nhẹ cho bé thoải mái khi di chuyển

Thiết kế cực kỳ đa năng, logo cao su chắc chắc

Rất thích hợp để bé đi hằng ngày, đặc biệt là mùa hè mang đến cảm giác thông thoáng cho đôi chân

YODY - Look good. Feel good.', CAST(399000.00 AS Decimal(10, 2)), 195, N'Children', 32)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (196, N'Dép Sandal Trẻ Em Đế Có Hoạ Tiết', N'Thành phần vải lưới 100% polyester

Chắc chắn, êm ái thoải mái cho đôi chân của bé

Thiết kế đơn giản, tỉ mỉ và tinh tế

Khóa dán thuận tiện cho các bé sử dụng

Quay dép chắc chắn cùng phần đế có tính năng chống trơn trượt giúp bé an toàn

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(429000.00 AS Decimal(10, 2)), 196, N'Children', 32)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (197, N'Dép Trẻ Em Sandal Chống Trơn', N'Dép sandal dành cho trẻ em

Chất liệu Ethylene và Vinayl Acetate

Sản phẩm cao cấp, chắc chắn, êm ái thoải mái cho đôi chân của bé

Thiết kế đơn giản, tỉ mỉ và tinh tế

Khóa dán thuận tiện cho các bé sử dụng

Quai dép chắc chắn cùng phần đế có tính năng chống trơn trượt giúp bé an toàn 

YODY - Look good. Feel good.

Sản xuất tại Việt Nam', CAST(249000.00 AS Decimal(10, 2)), 197, N'Children', 32)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (198, N'Polo Nam Cafe Phối Vai', N'Áo polo vải cafe, Thành phần: 100% Polyester by S''cafe 

Sợi Cafe là loại sợi thân thiện với môi trường do được làm từ bã cafe tái chế và chai nhựa tái chế với nhiểu tính năng nổi bật

Áo có khả năng chống tia UV lên tới 99% nhờ các lỗ nhỏ trên xơ sợi cafe có khả năng khúc xạ lại ánh sáng và tia UV

Áo polo cafe cho cảm giác mạc thông thoáng vì hấm hút mồ hôi tốt và khô nhanh

Hạn chế bám mùi trong quá trình sử dụng

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 198, N'Men', 5)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (199, N'Polo Nam Cafe Dệt Tổ Ong Phối Bo', N'Thành phần: 100% Polyester by S''cafe 

Nằm trong nhóm sản phẩm Polo cafe tổ ong thân thiên môi trường, chiếc áo này đem đến cho bạn sự thoải mái cùng niềm vui khi khoác lên mình 1 thiết kế tiên phong chất liệu xanh

Sợi cafe được làm từ bã cafe tái chế và chai nhựa tái chế, thông qua công nghệ hiện đại làm sạch và xử lý thành sợi mang nhiều đặc tính vượt trội trong ngành dệt may

Áo thấm hút tốt, nhanh không, hạn chế bám mùi

Có khả năng chống tia UV lên đến 99% 

Form dáng basic thoải mái, dễ mặc, phù hợp với nhiều hoàn cảnh khác nhau

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 199, N'Men', 5)
GO
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [gender], [category_id]) VALUES (200, N'Áo Polo Thể Thao Nam Airy Cool Trụ Khóa In Phản Quang', N'Chất liệu: Airy Cool

Thành phần:  88% Nylon, 12% Spandex

Áo polo form slimfit phù hợp với nhiều đối tượng khách hàng

Nẹp cổ sử dụng công nghệ ép hiện đại, không đường may kết hợp với hình in phản quang phù hợp với dòng thể thao

Dễ dàng kết hợp với, quần jeans, quần short, chân váy sẽ khiến bạn thoải mái dễ chịu và trẻ trung hơn.

Bạn có thể mặc sản phẩm khi tham gia vào các hoạt động thể thao hay thường ngày.

Sản xuất tại Việt Nam

YODY - Look good. Feel good.', CAST(329000.00 AS Decimal(10, 2)), 200, N'Men', 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (1, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (1, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (1, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (1, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (2, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (2, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (2, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (2, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (3, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (3, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (3, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (3, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (4, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (4, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (4, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (4, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (5, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (5, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (5, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (5, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (6, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (6, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (6, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (6, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (7, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (7, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (7, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (7, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (8, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (8, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (8, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (8, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (9, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (9, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (9, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (9, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (10, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (10, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (10, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (10, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (11, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (11, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (11, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (11, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (12, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (12, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (12, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (12, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (13, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (13, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (13, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (13, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (14, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (14, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (14, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (14, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (15, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (15, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (15, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (15, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (16, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (16, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (16, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (16, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (17, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (17, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (17, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (17, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (18, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (18, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (18, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (18, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (19, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (19, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (19, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (19, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (20, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (20, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (20, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (20, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (21, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (21, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (21, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (21, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (22, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (22, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (22, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (22, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (23, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (23, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (23, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (23, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (24, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (24, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (24, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (24, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (25, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (25, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (25, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (25, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (26, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (26, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (26, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (26, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (27, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (27, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (27, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (27, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (28, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (28, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (28, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (28, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (29, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (29, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (29, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (29, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (30, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (30, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (30, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (30, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (31, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (31, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (31, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (31, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (32, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (32, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (32, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (32, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (33, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (33, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (33, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (33, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (34, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (34, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (34, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (34, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (35, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (35, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (35, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (35, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (36, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (36, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (36, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (36, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (37, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (37, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (37, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (37, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (38, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (38, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (38, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (38, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (39, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (39, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (39, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (39, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (40, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (40, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (40, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (40, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (41, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (41, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (41, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (41, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (42, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (42, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (42, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (42, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (43, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (43, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (43, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (43, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (44, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (44, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (44, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (44, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (45, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (45, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (45, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (45, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (46, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (46, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (46, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (46, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (47, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (47, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (47, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (47, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (48, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (48, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (48, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (48, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (49, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (49, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (49, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (49, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (50, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (50, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (50, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (50, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (51, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (51, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (51, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (51, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (52, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (52, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (52, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (52, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (53, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (53, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (53, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (53, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (54, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (54, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (54, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (54, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (55, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (55, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (55, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (55, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (56, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (56, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (56, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (56, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (57, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (57, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (57, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (57, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (58, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (58, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (58, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (58, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (59, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (59, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (59, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (59, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (60, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (60, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (60, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (60, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (61, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (61, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (61, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (61, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (62, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (62, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (62, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (62, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (63, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (63, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (63, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (63, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (64, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (64, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (64, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (64, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (65, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (65, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (65, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (65, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (66, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (66, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (66, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (66, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (67, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (67, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (67, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (67, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (68, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (68, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (68, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (68, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (69, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (69, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (69, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (69, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (70, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (70, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (70, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (70, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (71, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (71, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (71, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (71, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (72, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (72, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (72, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (72, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (73, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (73, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (73, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (73, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (74, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (74, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (74, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (74, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (75, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (75, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (75, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (75, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (76, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (76, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (76, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (76, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (77, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (77, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (77, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (77, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (78, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (78, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (78, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (78, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (79, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (79, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (79, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (79, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (80, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (80, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (80, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (80, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (81, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (81, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (81, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (81, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (82, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (82, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (82, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (82, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (83, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (83, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (83, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (83, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (84, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (84, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (84, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (84, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (85, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (85, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (85, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (85, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (86, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (86, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (86, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (86, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (87, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (87, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (87, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (87, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (88, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (88, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (88, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (88, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (89, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (89, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (89, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (89, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (90, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (90, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (90, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (90, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (91, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (91, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (91, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (91, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (92, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (92, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (92, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (92, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (93, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (93, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (93, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (93, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (94, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (94, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (94, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (94, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (95, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (95, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (95, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (95, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (96, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (96, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (96, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (96, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (97, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (97, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (97, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (97, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (98, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (98, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (98, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (98, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (99, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (99, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (99, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (99, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (100, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (100, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (100, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (100, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (101, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (101, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (101, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (101, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (102, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (102, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (102, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (102, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (103, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (103, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (103, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (103, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (104, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (104, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (104, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (104, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (105, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (105, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (105, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (105, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (106, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (106, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (106, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (106, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (107, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (107, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (107, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (107, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (108, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (108, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (108, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (108, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (109, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (109, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (109, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (109, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (110, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (110, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (110, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (110, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (111, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (111, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (111, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (111, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (112, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (112, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (112, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (112, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (113, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (113, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (113, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (113, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (114, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (114, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (114, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (114, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (115, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (115, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (115, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (115, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (116, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (116, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (116, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (116, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (117, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (117, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (117, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (117, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (118, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (118, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (118, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (118, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (119, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (119, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (119, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (119, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (120, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (120, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (120, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (120, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (121, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (121, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (121, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (121, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (122, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (122, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (122, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (122, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (123, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (123, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (123, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (123, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (124, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (124, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (124, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (124, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (125, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (125, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (125, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (125, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (126, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (126, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (126, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (126, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (127, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (127, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (127, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (127, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (128, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (128, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (128, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (128, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (129, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (129, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (129, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (129, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (130, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (130, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (130, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (130, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (131, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (131, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (131, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (131, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (132, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (132, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (132, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (132, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (133, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (133, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (133, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (133, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (134, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (134, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (134, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (134, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (135, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (135, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (135, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (135, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (136, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (136, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (136, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (136, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (137, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (137, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (137, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (137, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (138, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (138, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (138, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (138, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (139, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (139, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (139, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (139, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (140, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (140, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (140, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (140, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (141, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (141, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (141, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (141, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (142, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (142, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (142, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (142, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (143, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (143, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (143, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (143, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (144, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (144, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (144, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (144, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (145, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (145, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (145, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (145, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (146, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (146, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (146, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (146, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (147, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (147, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (147, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (147, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (148, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (148, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (148, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (148, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (149, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (149, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (149, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (149, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (150, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (150, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (150, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (150, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (151, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (151, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (151, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (151, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (152, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (152, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (152, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (152, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (153, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (153, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (153, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (153, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (154, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (154, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (154, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (154, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (155, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (155, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (155, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (155, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (156, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (156, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (156, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (156, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (157, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (157, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (157, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (157, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (158, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (158, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (158, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (158, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (159, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (159, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (159, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (159, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (160, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (160, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (160, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (160, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (161, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (161, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (161, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (161, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (162, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (162, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (162, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (162, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (169, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (169, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (169, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (169, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (170, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (170, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (170, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (170, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (171, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (171, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (171, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (171, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (172, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (172, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (172, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (172, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (173, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (173, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (173, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (173, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (174, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (174, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (174, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (174, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (175, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (175, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (175, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (175, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (176, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (176, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (176, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (176, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (177, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (177, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (177, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (177, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (178, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (178, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (178, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (178, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (190, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (190, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (190, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (190, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (191, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (191, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (191, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (191, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (192, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (192, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (192, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (192, 4)
GO
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (193, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (193, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (193, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (193, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (194, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (194, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (194, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (194, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (195, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (195, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (195, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (195, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (196, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (196, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (196, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (196, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (197, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (197, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (197, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (197, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (198, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (198, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (198, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (198, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (199, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (199, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (199, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (199, 4)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (200, 1)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (200, 2)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (200, 3)
INSERT [dbo].[Product_Size] ([product_id], [size_id]) VALUES (200, 4)
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1, N'Chất lượng sản phẩm tốt', 3, 1, 11, CAST(N'2023-10-16T17:12:15.130' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (2, N'Sản phẩm mặc thoáng mát', 5, 1, 20, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (3, N'Sản phẩm mặc thoáng mát', 3, 1, 5, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (4, N'Chất lượng sản phẩm tốt', 4, 1, 16, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (5, N'Sản phẩm mặc thoáng mát', 3, 1, 5, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (6, N'Chất lượng sản phẩm tốt', 4, 2, 6, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (7, N'Giá thành hợp lý', 5, 2, 3, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (8, N'Giá thành hợp lý', 4, 2, 18, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (9, N'Phù hợp với túi tiền', 5, 2, 1, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (10, N'Sản phẩm mặc thoáng mát', 5, 2, 3, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (11, N'Chất lượng sản phẩm tốt', 5, 2, 13, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (12, N'Sản phẩm mặc thoáng mát', 3, 3, 13, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (13, N'Chất lượng sản phẩm tốt', 3, 3, 16, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (14, N'Chất lượng sản phẩm tốt', 4, 3, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (15, N'Chất lượng sản phẩm tốt', 3, 3, 2, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (16, N'Chất lượng sản phẩm tốt', 3, 3, 17, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (17, N'Chất lượng sản phẩm tốt', 5, 3, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (18, N'Chất lượng sản tạm ổn', 3, 3, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (19, N'Sản phẩm mặc thoáng mát', 4, 4, 19, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (20, N'Giá thành hợp lý', 5, 4, 13, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (21, N'Chất lượng sản phẩm tốt', 5, 4, 19, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (22, N'Giá thành hợp lý', 5, 4, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (23, N'Chất lượng sản tạm ổn', 4, 4, 13, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (24, N'Sản phẩm mặc thoáng mát', 3, 5, 11, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (25, N'Phù hợp với túi tiền', 4, 5, 10, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (26, N'Chất lượng sản phẩm tốt', 5, 5, 11, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (27, N'Sản phẩm mặc thoáng mát', 5, 5, 16, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (28, N'Phù hợp với túi tiền', 4, 5, 3, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (29, N'Giá thành hợp lý', 3, 5, 20, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (30, N'Sản phẩm mặc thoáng mát', 4, 6, 12, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (31, N'Sản phẩm mặc thoáng mát', 5, 6, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (32, N'Chất lượng sản tạm ổn', 3, 6, 17, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (33, N'Sản phẩm mặc thoáng mát', 3, 6, 8, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (34, N'Giá thành hợp lý', 3, 6, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (35, N'Chất lượng sản phẩm tốt', 5, 6, 1, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (36, N'Sản phẩm mặc thoáng mát', 3, 6, 2, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (37, N'Phù hợp với túi tiền', 4, 7, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (38, N'Giá thành hợp lý', 5, 7, 6, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (39, N'Giá thành hợp lý', 3, 7, 2, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (40, N'Giá thành hợp lý', 5, 7, 20, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (41, N'Phù hợp với túi tiền', 3, 7, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (42, N'Chất lượng sản phẩm tốt', 3, 8, 10, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (43, N'Sản phẩm mặc thoáng mát', 5, 8, 17, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (44, N'Chất lượng sản phẩm tốt', 4, 8, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (45, N'Chất lượng sản tạm ổn', 5, 8, 1, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (46, N'Sản phẩm mặc thoáng mát', 3, 8, 15, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (47, N'Sản phẩm mặc thoáng mát', 5, 8, 19, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (48, N'Chất lượng sản tạm ổn', 4, 9, 20, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (49, N'Chất lượng sản tạm ổn', 5, 9, 11, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (50, N'Chất lượng sản tạm ổn', 4, 9, 1, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (51, N'Phù hợp với túi tiền', 4, 9, 9, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (52, N'Sản phẩm mặc thoáng mát', 5, 9, 16, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (53, N'Chất lượng sản tạm ổn', 3, 9, 18, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (54, N'Chất lượng sản phẩm tốt', 4, 9, 9, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (55, N'Sản phẩm mặc thoáng mát', 5, 10, 12, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (56, N'Chất lượng sản tạm ổn', 3, 10, 10, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (57, N'Phù hợp với túi tiền', 3, 10, 8, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (58, N'Chất lượng sản tạm ổn', 5, 10, 17, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (59, N'Sản phẩm mặc thoáng mát', 5, 10, 16, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (60, N'Chất lượng sản tạm ổn', 5, 11, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (61, N'Sản phẩm mặc thoáng mát', 3, 11, 13, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (62, N'Phù hợp với túi tiền', 4, 11, 8, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (63, N'Sản phẩm mặc thoáng mát', 4, 11, 7, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (64, N'Phù hợp với túi tiền', 5, 11, 5, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (65, N'Chất lượng sản tạm ổn', 4, 11, 4, CAST(N'2023-10-16T17:12:15.203' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (66, N'Giá thành hợp lý', 5, 12, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (67, N'Chất lượng sản tạm ổn', 3, 12, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (68, N'Giá thành hợp lý', 5, 12, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (69, N'Chất lượng sản tạm ổn', 4, 12, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (70, N'Chất lượng sản phẩm tốt', 3, 12, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (71, N'Chất lượng sản tạm ổn', 5, 12, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (72, N'Giá thành hợp lý', 5, 12, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (73, N'Chất lượng sản phẩm tốt', 4, 13, 15, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (74, N'Giá thành hợp lý', 5, 13, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (75, N'Giá thành hợp lý', 5, 13, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (76, N'Phù hợp với túi tiền', 3, 13, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (77, N'Giá thành hợp lý', 5, 13, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (78, N'Phù hợp với túi tiền', 4, 14, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (79, N'Sản phẩm mặc thoáng mát', 5, 14, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (80, N'Chất lượng sản phẩm tốt', 3, 14, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (81, N'Phù hợp với túi tiền', 5, 14, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (82, N'Sản phẩm mặc thoáng mát', 3, 14, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (83, N'Phù hợp với túi tiền', 5, 14, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (84, N'Phù hợp với túi tiền', 4, 15, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (85, N'Phù hợp với túi tiền', 3, 15, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (86, N'Phù hợp với túi tiền', 4, 15, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (87, N'Chất lượng sản phẩm tốt', 3, 15, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (88, N'Chất lượng sản tạm ổn', 4, 15, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (89, N'Chất lượng sản tạm ổn', 5, 15, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (90, N'Giá thành hợp lý', 4, 15, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (91, N'Chất lượng sản phẩm tốt', 5, 16, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (92, N'Giá thành hợp lý', 3, 16, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (93, N'Sản phẩm mặc thoáng mát', 4, 16, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (94, N'Chất lượng sản tạm ổn', 3, 16, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (95, N'Phù hợp với túi tiền', 3, 16, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (96, N'Chất lượng sản phẩm tốt', 3, 17, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (97, N'Chất lượng sản phẩm tốt', 5, 17, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (98, N'Chất lượng sản phẩm tốt', 4, 17, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (99, N'Chất lượng sản tạm ổn', 5, 17, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (100, N'Giá thành hợp lý', 3, 17, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (101, N'Chất lượng sản tạm ổn', 5, 17, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (102, N'Phù hợp với túi tiền', 3, 18, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (103, N'Chất lượng sản phẩm tốt', 3, 18, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (104, N'Phù hợp với túi tiền', 5, 18, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (105, N'Sản phẩm mặc thoáng mát', 5, 18, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (106, N'Chất lượng sản tạm ổn', 3, 18, 14, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (107, N'Chất lượng sản tạm ổn', 5, 18, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (108, N'Phù hợp với túi tiền', 3, 18, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (109, N'Sản phẩm mặc thoáng mát', 5, 19, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (110, N'Giá thành hợp lý', 5, 19, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (111, N'Chất lượng sản phẩm tốt', 5, 19, 14, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (112, N'Giá thành hợp lý', 4, 19, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (113, N'Chất lượng sản phẩm tốt', 4, 19, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (114, N'Chất lượng sản tạm ổn', 5, 20, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (115, N'Chất lượng sản tạm ổn', 3, 20, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (116, N'Giá thành hợp lý', 3, 20, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (117, N'Chất lượng sản tạm ổn', 3, 20, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (118, N'Sản phẩm mặc thoáng mát', 4, 20, 15, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (119, N'Giá thành hợp lý', 5, 20, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (120, N'Sản phẩm mặc thoáng mát', 4, 21, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (121, N'Giá thành hợp lý', 4, 21, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (122, N'Chất lượng sản tạm ổn', 3, 21, 13, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (123, N'Sản phẩm mặc thoáng mát', 4, 21, 8, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (124, N'Sản phẩm mặc thoáng mát', 3, 21, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (125, N'Sản phẩm mặc thoáng mát', 3, 21, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (126, N'Phù hợp với túi tiền', 5, 21, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (127, N'Giá thành hợp lý', 3, 22, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (128, N'Chất lượng sản tạm ổn', 3, 22, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (129, N'Sản phẩm mặc thoáng mát', 4, 22, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (130, N'Chất lượng sản tạm ổn', 3, 22, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (131, N'Giá thành hợp lý', 5, 22, 14, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (132, N'Phù hợp với túi tiền', 3, 23, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (133, N'Chất lượng sản tạm ổn', 3, 23, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (134, N'Chất lượng sản tạm ổn', 4, 23, 15, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (135, N'Sản phẩm mặc thoáng mát', 5, 23, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (136, N'Chất lượng sản phẩm tốt', 3, 23, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (137, N'Chất lượng sản tạm ổn', 5, 23, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (138, N'Giá thành hợp lý', 4, 24, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (139, N'Giá thành hợp lý', 5, 24, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (140, N'Phù hợp với túi tiền', 4, 24, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (141, N'Chất lượng sản tạm ổn', 4, 24, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (142, N'Giá thành hợp lý', 5, 24, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (143, N'Chất lượng sản phẩm tốt', 3, 24, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (144, N'Chất lượng sản phẩm tốt', 4, 24, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (145, N'Giá thành hợp lý', 4, 25, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (146, N'Giá thành hợp lý', 4, 25, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (147, N'Giá thành hợp lý', 3, 25, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (148, N'Chất lượng sản tạm ổn', 5, 25, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (149, N'Chất lượng sản tạm ổn', 5, 25, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (150, N'Giá thành hợp lý', 5, 26, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (151, N'Sản phẩm mặc thoáng mát', 4, 26, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (152, N'Chất lượng sản phẩm tốt', 4, 26, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (153, N'Chất lượng sản tạm ổn', 5, 26, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (154, N'Phù hợp với túi tiền', 3, 26, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (155, N'Chất lượng sản tạm ổn', 4, 26, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (156, N'Sản phẩm mặc thoáng mát', 5, 27, 8, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (157, N'Giá thành hợp lý', 5, 27, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (158, N'Phù hợp với túi tiền', 4, 27, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (159, N'Chất lượng sản phẩm tốt', 3, 27, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (160, N'Phù hợp với túi tiền', 5, 27, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (161, N'Giá thành hợp lý', 3, 27, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (162, N'Phù hợp với túi tiền', 4, 27, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (163, N'Phù hợp với túi tiền', 4, 28, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (164, N'Chất lượng sản phẩm tốt', 5, 28, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (165, N'Sản phẩm mặc thoáng mát', 5, 28, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (166, N'Phù hợp với túi tiền', 3, 28, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (167, N'Chất lượng sản tạm ổn', 3, 28, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (168, N'Chất lượng sản tạm ổn', 4, 29, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (169, N'Phù hợp với túi tiền', 5, 29, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (170, N'Chất lượng sản phẩm tốt', 3, 29, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (171, N'Chất lượng sản phẩm tốt', 3, 29, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (172, N'Phù hợp với túi tiền', 5, 29, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (173, N'Chất lượng sản tạm ổn', 5, 29, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (174, N'Giá thành hợp lý', 3, 30, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (175, N'Sản phẩm mặc thoáng mát', 4, 30, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (176, N'Chất lượng sản phẩm tốt', 3, 30, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (177, N'Chất lượng sản phẩm tốt', 4, 30, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (178, N'Sản phẩm mặc thoáng mát', 3, 30, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (179, N'Chất lượng sản phẩm tốt', 5, 30, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (180, N'Sản phẩm mặc thoáng mát', 5, 30, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (181, N'Giá thành hợp lý', 5, 31, 9, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (182, N'Chất lượng sản phẩm tốt', 4, 31, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (183, N'Giá thành hợp lý', 5, 31, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (184, N'Giá thành hợp lý', 3, 31, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (185, N'Phù hợp với túi tiền', 5, 31, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (186, N'Sản phẩm mặc thoáng mát', 5, 32, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (187, N'Sản phẩm mặc thoáng mát', 4, 32, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (188, N'Chất lượng sản tạm ổn', 3, 32, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (189, N'Giá thành hợp lý', 5, 32, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (190, N'Sản phẩm mặc thoáng mát', 4, 32, 8, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (191, N'Sản phẩm mặc thoáng mát', 4, 32, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (192, N'Giá thành hợp lý', 5, 33, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (193, N'Giá thành hợp lý', 5, 33, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (194, N'Sản phẩm mặc thoáng mát', 4, 33, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (195, N'Chất lượng sản tạm ổn', 5, 33, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (196, N'Giá thành hợp lý', 4, 33, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (197, N'Phù hợp với túi tiền', 3, 33, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (198, N'Sản phẩm mặc thoáng mát', 4, 33, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (199, N'Chất lượng sản phẩm tốt', 3, 34, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (200, N'Sản phẩm mặc thoáng mát', 5, 34, 8, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (201, N'Giá thành hợp lý', 5, 34, 15, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (202, N'Sản phẩm mặc thoáng mát', 3, 34, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (203, N'Chất lượng sản phẩm tốt', 5, 34, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (204, N'Sản phẩm mặc thoáng mát', 4, 35, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (205, N'Chất lượng sản tạm ổn', 4, 35, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (206, N'Chất lượng sản phẩm tốt', 5, 35, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (207, N'Giá thành hợp lý', 5, 35, 14, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (208, N'Chất lượng sản tạm ổn', 3, 35, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (209, N'Giá thành hợp lý', 5, 35, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (210, N'Sản phẩm mặc thoáng mát', 5, 36, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (211, N'Sản phẩm mặc thoáng mát', 3, 36, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (212, N'Chất lượng sản phẩm tốt', 5, 36, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (213, N'Chất lượng sản tạm ổn', 3, 36, 13, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (214, N'Sản phẩm mặc thoáng mát', 5, 36, 18, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (215, N'Phù hợp với túi tiền', 3, 36, 1, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (216, N'Giá thành hợp lý', 5, 36, 7, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (217, N'Giá thành hợp lý', 3, 37, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (218, N'Phù hợp với túi tiền', 5, 37, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (219, N'Phù hợp với túi tiền', 3, 37, 6, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (220, N'Chất lượng sản phẩm tốt', 5, 37, 17, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (221, N'Giá thành hợp lý', 5, 37, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (222, N'Chất lượng sản tạm ổn', 5, 38, 13, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (223, N'Chất lượng sản phẩm tốt', 5, 38, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (224, N'Giá thành hợp lý', 3, 38, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (225, N'Giá thành hợp lý', 4, 38, 14, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (226, N'Chất lượng sản tạm ổn', 3, 38, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (227, N'Chất lượng sản tạm ổn', 5, 38, 3, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (228, N'Phù hợp với túi tiền', 3, 39, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (229, N'Phù hợp với túi tiền', 5, 39, 10, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (230, N'Chất lượng sản phẩm tốt', 5, 39, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (231, N'Sản phẩm mặc thoáng mát', 5, 39, 2, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (232, N'Sản phẩm mặc thoáng mát', 3, 39, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (233, N'Chất lượng sản phẩm tốt', 4, 39, 5, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (234, N'Giá thành hợp lý', 3, 39, 8, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (235, N'Phù hợp với túi tiền', 4, 40, 12, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (236, N'Sản phẩm mặc thoáng mát', 3, 40, 20, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (237, N'Phù hợp với túi tiền', 3, 40, 4, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (238, N'Giá thành hợp lý', 5, 40, 13, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (239, N'Sản phẩm mặc thoáng mát', 5, 40, 11, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (240, N'Chất lượng sản phẩm tốt', 4, 41, 15, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (241, N'Sản phẩm mặc thoáng mát', 3, 41, 16, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (242, N'Chất lượng sản tạm ổn', 4, 41, 19, CAST(N'2023-10-16T17:12:15.207' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (243, N'Chất lượng sản phẩm tốt', 5, 41, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (244, N'Giá thành hợp lý', 5, 41, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (245, N'Phù hợp với túi tiền', 3, 41, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (246, N'Giá thành hợp lý', 5, 42, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (247, N'Sản phẩm mặc thoáng mát', 5, 42, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (248, N'Chất lượng sản phẩm tốt', 3, 42, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (249, N'Sản phẩm mặc thoáng mát', 5, 42, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (250, N'Giá thành hợp lý', 4, 42, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (251, N'Phù hợp với túi tiền', 5, 42, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (252, N'Chất lượng sản phẩm tốt', 5, 42, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (253, N'Chất lượng sản phẩm tốt', 5, 43, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (254, N'Giá thành hợp lý', 5, 43, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (255, N'Chất lượng sản tạm ổn', 5, 43, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (256, N'Sản phẩm mặc thoáng mát', 3, 43, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (257, N'Chất lượng sản phẩm tốt', 5, 43, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (258, N'Chất lượng sản tạm ổn', 5, 44, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (259, N'Phù hợp với túi tiền', 4, 44, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (260, N'Sản phẩm mặc thoáng mát', 3, 44, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (261, N'Sản phẩm mặc thoáng mát', 4, 44, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (262, N'Sản phẩm mặc thoáng mát', 5, 44, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (263, N'Chất lượng sản tạm ổn', 5, 44, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (264, N'Chất lượng sản tạm ổn', 5, 45, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (265, N'Chất lượng sản tạm ổn', 5, 45, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (266, N'Chất lượng sản tạm ổn', 4, 45, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (267, N'Giá thành hợp lý', 5, 45, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (268, N'Chất lượng sản phẩm tốt', 4, 45, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (269, N'Chất lượng sản phẩm tốt', 3, 45, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (270, N'Chất lượng sản tạm ổn', 4, 45, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (271, N'Phù hợp với túi tiền', 4, 46, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (272, N'Chất lượng sản tạm ổn', 4, 46, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (273, N'Sản phẩm mặc thoáng mát', 4, 46, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (274, N'Phù hợp với túi tiền', 5, 46, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (275, N'Giá thành hợp lý', 5, 46, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (276, N'Sản phẩm mặc thoáng mát', 4, 47, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (277, N'Chất lượng sản phẩm tốt', 3, 47, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (278, N'Giá thành hợp lý', 4, 47, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (279, N'Chất lượng sản tạm ổn', 5, 47, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (280, N'Phù hợp với túi tiền', 3, 47, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (281, N'Sản phẩm mặc thoáng mát', 4, 47, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (282, N'Chất lượng sản tạm ổn', 3, 48, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (283, N'Phù hợp với túi tiền', 3, 48, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (284, N'Chất lượng sản phẩm tốt', 4, 48, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (285, N'Sản phẩm mặc thoáng mát', 5, 48, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (286, N'Sản phẩm mặc thoáng mát', 5, 48, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (287, N'Phù hợp với túi tiền', 4, 48, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (288, N'Chất lượng sản tạm ổn', 3, 48, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (289, N'Giá thành hợp lý', 3, 49, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (290, N'Chất lượng sản phẩm tốt', 3, 49, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (291, N'Phù hợp với túi tiền', 4, 49, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (292, N'Phù hợp với túi tiền', 4, 49, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (293, N'Chất lượng sản phẩm tốt', 5, 49, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (294, N'Sản phẩm mặc thoáng mát', 3, 50, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (295, N'Giá thành hợp lý', 5, 50, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (296, N'Chất lượng sản phẩm tốt', 4, 50, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (297, N'Chất lượng sản phẩm tốt', 5, 50, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (298, N'Phù hợp với túi tiền', 5, 50, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (299, N'Sản phẩm mặc thoáng mát', 4, 50, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (300, N'Chất lượng sản tạm ổn', 4, 51, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (301, N'Phù hợp với túi tiền', 5, 51, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (302, N'Phù hợp với túi tiền', 3, 51, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (303, N'Chất lượng sản phẩm tốt', 3, 51, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (304, N'Sản phẩm mặc thoáng mát', 5, 51, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (305, N'Chất lượng sản phẩm tốt', 5, 51, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (306, N'Chất lượng sản phẩm tốt', 4, 51, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (307, N'Giá thành hợp lý', 5, 52, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (308, N'Sản phẩm mặc thoáng mát', 4, 52, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (309, N'Chất lượng sản tạm ổn', 5, 52, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (310, N'Chất lượng sản tạm ổn', 4, 52, 20, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (311, N'Chất lượng sản phẩm tốt', 4, 52, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (312, N'Chất lượng sản phẩm tốt', 4, 53, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (313, N'Giá thành hợp lý', 5, 53, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (314, N'Phù hợp với túi tiền', 4, 53, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (315, N'Chất lượng sản tạm ổn', 5, 53, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (316, N'Sản phẩm mặc thoáng mát', 3, 53, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (317, N'Phù hợp với túi tiền', 4, 53, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (318, N'Giá thành hợp lý', 5, 54, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (319, N'Chất lượng sản phẩm tốt', 5, 54, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (320, N'Chất lượng sản phẩm tốt', 5, 54, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (321, N'Chất lượng sản tạm ổn', 5, 54, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (322, N'Chất lượng sản tạm ổn', 4, 54, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (323, N'Chất lượng sản phẩm tốt', 4, 54, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (324, N'Chất lượng sản phẩm tốt', 4, 54, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (325, N'Chất lượng sản phẩm tốt', 3, 55, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (326, N'Chất lượng sản tạm ổn', 5, 55, 20, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (327, N'Sản phẩm mặc thoáng mát', 5, 55, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (328, N'Chất lượng sản phẩm tốt', 3, 55, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (329, N'Chất lượng sản tạm ổn', 4, 55, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (330, N'Chất lượng sản tạm ổn', 3, 56, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (331, N'Giá thành hợp lý', 5, 56, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (332, N'Chất lượng sản phẩm tốt', 5, 56, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (333, N'Chất lượng sản tạm ổn', 4, 56, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (334, N'Sản phẩm mặc thoáng mát', 4, 56, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (335, N'Giá thành hợp lý', 5, 56, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (336, N'Chất lượng sản tạm ổn', 4, 57, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (337, N'Chất lượng sản phẩm tốt', 5, 57, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (338, N'Chất lượng sản tạm ổn', 3, 57, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (339, N'Chất lượng sản tạm ổn', 3, 57, 3, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (340, N'Phù hợp với túi tiền', 5, 57, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (341, N'Phù hợp với túi tiền', 5, 57, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (342, N'Phù hợp với túi tiền', 4, 57, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (343, N'Sản phẩm mặc thoáng mát', 5, 58, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (344, N'Chất lượng sản tạm ổn', 4, 58, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (345, N'Chất lượng sản phẩm tốt', 4, 58, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (346, N'Sản phẩm mặc thoáng mát', 5, 58, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (347, N'Chất lượng sản tạm ổn', 4, 58, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (348, N'Phù hợp với túi tiền', 4, 59, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (349, N'Chất lượng sản tạm ổn', 4, 59, 20, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (350, N'Chất lượng sản tạm ổn', 4, 59, 16, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (351, N'Sản phẩm mặc thoáng mát', 3, 59, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (352, N'Chất lượng sản phẩm tốt', 4, 59, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (353, N'Chất lượng sản phẩm tốt', 3, 59, 14, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (354, N'Giá thành hợp lý', 3, 60, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (355, N'Giá thành hợp lý', 4, 60, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (356, N'Phù hợp với túi tiền', 4, 60, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (357, N'Chất lượng sản phẩm tốt', 3, 60, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (358, N'Giá thành hợp lý', 4, 60, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (359, N'Phù hợp với túi tiền', 3, 60, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (360, N'Sản phẩm mặc thoáng mát', 5, 60, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (361, N'Chất lượng sản tạm ổn', 4, 61, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (362, N'Phù hợp với túi tiền', 5, 61, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (363, N'Chất lượng sản tạm ổn', 5, 61, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (364, N'Giá thành hợp lý', 3, 61, 2, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (365, N'Chất lượng sản phẩm tốt', 4, 61, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (366, N'Chất lượng sản tạm ổn', 5, 62, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (367, N'Sản phẩm mặc thoáng mát', 4, 62, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (368, N'Phù hợp với túi tiền', 4, 62, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (369, N'Giá thành hợp lý', 4, 62, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (370, N'Sản phẩm mặc thoáng mát', 3, 62, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (371, N'Chất lượng sản tạm ổn', 5, 62, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (372, N'Giá thành hợp lý', 4, 63, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (373, N'Chất lượng sản phẩm tốt', 5, 63, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (374, N'Giá thành hợp lý', 5, 63, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (375, N'Chất lượng sản tạm ổn', 4, 63, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (376, N'Chất lượng sản tạm ổn', 4, 63, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (377, N'Chất lượng sản phẩm tốt', 4, 63, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (378, N'Chất lượng sản phẩm tốt', 5, 63, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (379, N'Chất lượng sản tạm ổn', 3, 64, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (380, N'Chất lượng sản tạm ổn', 3, 64, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (381, N'Phù hợp với túi tiền', 4, 64, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (382, N'Phù hợp với túi tiền', 3, 64, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (383, N'Sản phẩm mặc thoáng mát', 3, 64, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (384, N'Phù hợp với túi tiền', 4, 65, 17, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (385, N'Giá thành hợp lý', 3, 65, 3, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (386, N'Chất lượng sản phẩm tốt', 4, 65, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (387, N'Chất lượng sản tạm ổn', 5, 65, 10, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (388, N'Chất lượng sản tạm ổn', 3, 65, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (389, N'Sản phẩm mặc thoáng mát', 5, 65, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (390, N'Sản phẩm mặc thoáng mát', 5, 66, 19, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (391, N'Chất lượng sản tạm ổn', 5, 66, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (392, N'Giá thành hợp lý', 5, 66, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (393, N'Phù hợp với túi tiền', 5, 66, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (394, N'Chất lượng sản tạm ổn', 4, 66, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (395, N'Sản phẩm mặc thoáng mát', 3, 66, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (396, N'Chất lượng sản tạm ổn', 5, 66, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (397, N'Phù hợp với túi tiền', 4, 67, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (398, N'Sản phẩm mặc thoáng mát', 5, 67, 15, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (399, N'Sản phẩm mặc thoáng mát', 3, 67, 5, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (400, N'Chất lượng sản tạm ổn', 3, 67, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (401, N'Giá thành hợp lý', 4, 67, 7, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (402, N'Giá thành hợp lý', 3, 68, 3, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (403, N'Chất lượng sản phẩm tốt', 4, 68, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (404, N'Sản phẩm mặc thoáng mát', 3, 68, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (405, N'Chất lượng sản tạm ổn', 3, 68, 13, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (406, N'Sản phẩm mặc thoáng mát', 4, 68, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (407, N'Phù hợp với túi tiền', 4, 68, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (408, N'Sản phẩm mặc thoáng mát', 3, 69, 20, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (409, N'Sản phẩm mặc thoáng mát', 4, 69, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (410, N'Chất lượng sản tạm ổn', 4, 69, 18, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (411, N'Phù hợp với túi tiền', 5, 69, 9, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (412, N'Sản phẩm mặc thoáng mát', 5, 69, 6, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (413, N'Phù hợp với túi tiền', 5, 69, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (414, N'Chất lượng sản phẩm tốt', 5, 69, 4, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (415, N'Giá thành hợp lý', 4, 70, 11, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (416, N'Giá thành hợp lý', 3, 70, 1, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (417, N'Chất lượng sản phẩm tốt', 5, 70, 12, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (418, N'Phù hợp với túi tiền', 4, 70, 8, CAST(N'2023-10-16T17:12:15.210' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (419, N'Giá thành hợp lý', 5, 70, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (420, N'Giá thành hợp lý', 4, 71, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (421, N'Giá thành hợp lý', 3, 71, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (422, N'Chất lượng sản tạm ổn', 4, 71, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (423, N'Sản phẩm mặc thoáng mát', 4, 71, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (424, N'Chất lượng sản tạm ổn', 5, 71, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (425, N'Giá thành hợp lý', 4, 71, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (426, N'Sản phẩm mặc thoáng mát', 3, 72, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (427, N'Chất lượng sản tạm ổn', 5, 72, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (428, N'Sản phẩm mặc thoáng mát', 3, 72, 12, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (429, N'Chất lượng sản tạm ổn', 4, 72, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (430, N'Giá thành hợp lý', 4, 72, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (431, N'Sản phẩm mặc thoáng mát', 4, 72, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (432, N'Chất lượng sản phẩm tốt', 4, 72, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (433, N'Giá thành hợp lý', 5, 73, 12, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (434, N'Phù hợp với túi tiền', 3, 73, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (435, N'Chất lượng sản phẩm tốt', 4, 73, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (436, N'Phù hợp với túi tiền', 5, 73, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (437, N'Chất lượng sản phẩm tốt', 3, 73, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (438, N'Chất lượng sản phẩm tốt', 3, 74, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (439, N'Giá thành hợp lý', 3, 74, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (440, N'Giá thành hợp lý', 3, 74, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (441, N'Chất lượng sản tạm ổn', 3, 74, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (442, N'Sản phẩm mặc thoáng mát', 4, 74, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (443, N'Chất lượng sản phẩm tốt', 5, 74, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (444, N'Chất lượng sản tạm ổn', 3, 75, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (445, N'Chất lượng sản phẩm tốt', 4, 75, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (446, N'Phù hợp với túi tiền', 5, 75, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (447, N'Phù hợp với túi tiền', 4, 75, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (448, N'Giá thành hợp lý', 3, 75, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (449, N'Chất lượng sản tạm ổn', 5, 75, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (450, N'Sản phẩm mặc thoáng mát', 4, 75, 8, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (451, N'Sản phẩm mặc thoáng mát', 3, 76, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (452, N'Chất lượng sản tạm ổn', 4, 76, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (453, N'Chất lượng sản phẩm tốt', 5, 76, 12, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (454, N'Chất lượng sản tạm ổn', 5, 76, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (455, N'Sản phẩm mặc thoáng mát', 3, 76, 18, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (456, N'Giá thành hợp lý', 5, 77, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (457, N'Phù hợp với túi tiền', 3, 77, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (458, N'Phù hợp với túi tiền', 4, 77, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (459, N'Phù hợp với túi tiền', 4, 77, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (460, N'Phù hợp với túi tiền', 5, 77, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (461, N'Sản phẩm mặc thoáng mát', 5, 77, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (462, N'Sản phẩm mặc thoáng mát', 5, 78, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (463, N'Giá thành hợp lý', 3, 78, 8, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (464, N'Phù hợp với túi tiền', 4, 78, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (465, N'Chất lượng sản phẩm tốt', 5, 78, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (466, N'Giá thành hợp lý', 4, 78, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (467, N'Phù hợp với túi tiền', 5, 78, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (468, N'Sản phẩm mặc thoáng mát', 3, 78, 8, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (469, N'Chất lượng sản phẩm tốt', 4, 79, 18, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (470, N'Phù hợp với túi tiền', 5, 79, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (471, N'Giá thành hợp lý', 3, 79, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (472, N'Chất lượng sản tạm ổn', 4, 79, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (473, N'Chất lượng sản phẩm tốt', 4, 79, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (474, N'Giá thành hợp lý', 4, 80, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (475, N'Sản phẩm mặc thoáng mát', 3, 80, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (476, N'Sản phẩm mặc thoáng mát', 3, 80, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (477, N'Chất lượng sản phẩm tốt', 5, 80, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (478, N'Chất lượng sản phẩm tốt', 4, 80, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (479, N'Chất lượng sản tạm ổn', 5, 80, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (480, N'Giá thành hợp lý', 4, 81, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (481, N'Giá thành hợp lý', 3, 81, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (482, N'Chất lượng sản tạm ổn', 5, 81, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (483, N'Sản phẩm mặc thoáng mát', 5, 81, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (484, N'Phù hợp với túi tiền', 4, 81, 8, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (485, N'Chất lượng sản phẩm tốt', 3, 81, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (486, N'Sản phẩm mặc thoáng mát', 5, 81, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (487, N'Sản phẩm mặc thoáng mát', 3, 82, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (488, N'Giá thành hợp lý', 3, 82, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (489, N'Chất lượng sản tạm ổn', 5, 82, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (490, N'Chất lượng sản phẩm tốt', 4, 82, 12, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (491, N'Phù hợp với túi tiền', 5, 82, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (492, N'Chất lượng sản phẩm tốt', 4, 83, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (493, N'Sản phẩm mặc thoáng mát', 5, 83, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (494, N'Sản phẩm mặc thoáng mát', 4, 83, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (495, N'Chất lượng sản phẩm tốt', 3, 83, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (496, N'Chất lượng sản tạm ổn', 4, 83, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (497, N'Sản phẩm mặc thoáng mát', 3, 83, 8, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (498, N'Chất lượng sản tạm ổn', 5, 84, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (499, N'Chất lượng sản tạm ổn', 3, 84, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (500, N'Phù hợp với túi tiền', 5, 84, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (501, N'Giá thành hợp lý', 4, 84, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (502, N'Phù hợp với túi tiền', 3, 84, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (503, N'Chất lượng sản tạm ổn', 4, 84, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (504, N'Sản phẩm mặc thoáng mát', 5, 84, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (505, N'Sản phẩm mặc thoáng mát', 3, 85, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (506, N'Sản phẩm mặc thoáng mát', 4, 85, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (507, N'Giá thành hợp lý', 5, 85, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (508, N'Chất lượng sản phẩm tốt', 3, 85, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (509, N'Sản phẩm mặc thoáng mát', 3, 85, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (510, N'Chất lượng sản phẩm tốt', 4, 86, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (511, N'Phù hợp với túi tiền', 4, 86, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (512, N'Sản phẩm mặc thoáng mát', 3, 86, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (513, N'Chất lượng sản tạm ổn', 5, 86, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (514, N'Chất lượng sản tạm ổn', 4, 86, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (515, N'Chất lượng sản phẩm tốt', 5, 86, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (516, N'Sản phẩm mặc thoáng mát', 3, 87, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (517, N'Giá thành hợp lý', 4, 87, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (518, N'Sản phẩm mặc thoáng mát', 5, 87, 4, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (519, N'Sản phẩm mặc thoáng mát', 3, 87, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (520, N'Chất lượng sản tạm ổn', 5, 87, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (521, N'Chất lượng sản phẩm tốt', 5, 87, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (522, N'Giá thành hợp lý', 5, 87, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (523, N'Giá thành hợp lý', 3, 88, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (524, N'Phù hợp với túi tiền', 4, 88, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (525, N'Giá thành hợp lý', 3, 88, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (526, N'Sản phẩm mặc thoáng mát', 5, 88, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (527, N'Chất lượng sản tạm ổn', 5, 88, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (528, N'Chất lượng sản tạm ổn', 4, 89, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (529, N'Giá thành hợp lý', 4, 89, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (530, N'Chất lượng sản tạm ổn', 4, 89, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (531, N'Giá thành hợp lý', 3, 89, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (532, N'Giá thành hợp lý', 4, 89, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (533, N'Giá thành hợp lý', 3, 89, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (534, N'Sản phẩm mặc thoáng mát', 4, 90, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (535, N'Giá thành hợp lý', 4, 90, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (536, N'Phù hợp với túi tiền', 5, 90, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (537, N'Giá thành hợp lý', 3, 90, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (538, N'Chất lượng sản phẩm tốt', 3, 90, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (539, N'Phù hợp với túi tiền', 4, 90, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (540, N'Sản phẩm mặc thoáng mát', 5, 90, 1, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (541, N'Chất lượng sản phẩm tốt', 5, 91, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (542, N'Phù hợp với túi tiền', 3, 91, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (543, N'Phù hợp với túi tiền', 5, 91, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (544, N'Phù hợp với túi tiền', 4, 91, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (545, N'Giá thành hợp lý', 3, 91, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (546, N'Chất lượng sản tạm ổn', 3, 92, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (547, N'Sản phẩm mặc thoáng mát', 4, 92, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (548, N'Chất lượng sản tạm ổn', 4, 92, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (549, N'Chất lượng sản tạm ổn', 4, 92, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (550, N'Phù hợp với túi tiền', 4, 92, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (551, N'Phù hợp với túi tiền', 4, 92, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (552, N'Phù hợp với túi tiền', 3, 93, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (553, N'Sản phẩm mặc thoáng mát', 3, 93, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (554, N'Chất lượng sản phẩm tốt', 4, 93, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (555, N'Chất lượng sản phẩm tốt', 5, 93, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (556, N'Sản phẩm mặc thoáng mát', 5, 93, 1, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (557, N'Phù hợp với túi tiền', 5, 93, 18, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (558, N'Chất lượng sản phẩm tốt', 5, 93, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (559, N'Giá thành hợp lý', 4, 94, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (560, N'Phù hợp với túi tiền', 3, 94, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (561, N'Giá thành hợp lý', 4, 94, 11, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (562, N'Chất lượng sản tạm ổn', 3, 94, 7, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (563, N'Chất lượng sản phẩm tốt', 3, 94, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (564, N'Chất lượng sản tạm ổn', 4, 95, 18, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (565, N'Chất lượng sản tạm ổn', 5, 95, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (566, N'Phù hợp với túi tiền', 4, 95, 12, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (567, N'Phù hợp với túi tiền', 3, 95, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (568, N'Phù hợp với túi tiền', 4, 95, 2, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (569, N'Sản phẩm mặc thoáng mát', 3, 95, 1, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (570, N'Chất lượng sản tạm ổn', 3, 96, 16, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (571, N'Chất lượng sản phẩm tốt', 3, 96, 15, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (572, N'Sản phẩm mặc thoáng mát', 4, 96, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (573, N'Sản phẩm mặc thoáng mát', 4, 96, 19, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (574, N'Chất lượng sản tạm ổn', 5, 96, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (575, N'Sản phẩm mặc thoáng mát', 5, 96, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (576, N'Giá thành hợp lý', 3, 96, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (577, N'Chất lượng sản tạm ổn', 3, 97, 20, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (578, N'Chất lượng sản tạm ổn', 4, 97, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (579, N'Sản phẩm mặc thoáng mát', 5, 97, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (580, N'Chất lượng sản tạm ổn', 4, 97, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (581, N'Giá thành hợp lý', 4, 97, 1, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (582, N'Phù hợp với túi tiền', 4, 98, 9, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (583, N'Chất lượng sản tạm ổn', 3, 98, 10, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (584, N'Sản phẩm mặc thoáng mát', 3, 98, 18, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (585, N'Phù hợp với túi tiền', 4, 98, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (586, N'Chất lượng sản tạm ổn', 4, 98, 5, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (587, N'Sản phẩm mặc thoáng mát', 3, 98, 3, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (588, N'Phù hợp với túi tiền', 3, 99, 13, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (589, N'Sản phẩm mặc thoáng mát', 4, 99, 14, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (590, N'Chất lượng sản phẩm tốt', 5, 99, 17, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (591, N'Chất lượng sản phẩm tốt', 5, 99, 6, CAST(N'2023-10-16T17:12:15.213' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (592, N'Chất lượng sản tạm ổn', 4, 99, 12, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (593, N'Chất lượng sản tạm ổn', 3, 99, 8, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (594, N'Sản phẩm mặc thoáng mát', 3, 99, 12, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (595, N'Sản phẩm mặc thoáng mát', 5, 100, 2, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (596, N'Chất lượng sản phẩm tốt', 5, 100, 6, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (597, N'Sản phẩm mặc thoáng mát', 3, 100, 20, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (598, N'Chất lượng sản tạm ổn', 3, 100, 1, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (599, N'Phù hợp với túi tiền', 4, 100, 12, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (600, N'Giá thành hợp lý', 4, 101, 4, CAST(N'2023-10-16T17:12:15.217' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (601, N'Giá thành hợp lý', 3, 101, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (602, N'Phù hợp với túi tiền', 5, 101, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (603, N'Phù hợp với túi tiền', 4, 101, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (604, N'Phù hợp với túi tiền', 4, 101, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (605, N'Sản phẩm mặc thoáng mát', 3, 101, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (606, N'Sản phẩm mặc thoáng mát', 3, 102, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (607, N'Sản phẩm mặc thoáng mát', 4, 102, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (608, N'Chất lượng sản phẩm tốt', 4, 102, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (609, N'Phù hợp với túi tiền', 5, 102, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (610, N'Sản phẩm mặc thoáng mát', 3, 102, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (611, N'Chất lượng sản tạm ổn', 3, 102, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (612, N'Sản phẩm mặc thoáng mát', 4, 102, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (613, N'Phù hợp với túi tiền', 3, 103, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (614, N'Chất lượng sản phẩm tốt', 5, 103, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (615, N'Giá thành hợp lý', 4, 103, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (616, N'Chất lượng sản tạm ổn', 3, 103, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (617, N'Phù hợp với túi tiền', 4, 103, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (618, N'Chất lượng sản phẩm tốt', 5, 104, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (619, N'Phù hợp với túi tiền', 5, 104, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (620, N'Chất lượng sản phẩm tốt', 4, 104, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (621, N'Giá thành hợp lý', 3, 104, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (622, N'Phù hợp với túi tiền', 3, 104, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (623, N'Chất lượng sản tạm ổn', 3, 104, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (624, N'Giá thành hợp lý', 3, 105, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (625, N'Chất lượng sản phẩm tốt', 5, 105, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (626, N'Phù hợp với túi tiền', 4, 105, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (627, N'Giá thành hợp lý', 5, 105, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (628, N'Phù hợp với túi tiền', 5, 105, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (629, N'Sản phẩm mặc thoáng mát', 5, 105, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (630, N'Sản phẩm mặc thoáng mát', 5, 105, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (631, N'Sản phẩm mặc thoáng mát', 3, 106, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (632, N'Chất lượng sản tạm ổn', 5, 106, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (633, N'Sản phẩm mặc thoáng mát', 4, 106, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (634, N'Chất lượng sản phẩm tốt', 3, 106, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (635, N'Chất lượng sản phẩm tốt', 5, 106, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (636, N'Giá thành hợp lý', 3, 107, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (637, N'Phù hợp với túi tiền', 5, 107, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (638, N'Phù hợp với túi tiền', 5, 107, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (639, N'Chất lượng sản phẩm tốt', 5, 107, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (640, N'Giá thành hợp lý', 5, 107, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (641, N'Phù hợp với túi tiền', 4, 107, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (642, N'Chất lượng sản tạm ổn', 4, 108, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (643, N'Chất lượng sản tạm ổn', 3, 108, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (644, N'Chất lượng sản tạm ổn', 4, 108, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (645, N'Sản phẩm mặc thoáng mát', 5, 108, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (646, N'Sản phẩm mặc thoáng mát', 5, 108, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (647, N'Phù hợp với túi tiền', 4, 108, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (648, N'Sản phẩm mặc thoáng mát', 4, 108, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (649, N'Phù hợp với túi tiền', 4, 109, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (650, N'Sản phẩm mặc thoáng mát', 5, 109, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (651, N'Chất lượng sản tạm ổn', 5, 109, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (652, N'Sản phẩm mặc thoáng mát', 5, 109, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (653, N'Phù hợp với túi tiền', 3, 109, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (654, N'Chất lượng sản phẩm tốt', 4, 110, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (655, N'Phù hợp với túi tiền', 5, 110, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (656, N'Phù hợp với túi tiền', 3, 110, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (657, N'Chất lượng sản phẩm tốt', 3, 110, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (658, N'Phù hợp với túi tiền', 5, 110, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (659, N'Chất lượng sản phẩm tốt', 3, 110, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (660, N'Phù hợp với túi tiền', 3, 111, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (661, N'Chất lượng sản tạm ổn', 5, 111, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (662, N'Sản phẩm mặc thoáng mát', 4, 111, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (663, N'Giá thành hợp lý', 4, 111, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (664, N'Giá thành hợp lý', 3, 111, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (665, N'Chất lượng sản tạm ổn', 4, 111, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (666, N'Chất lượng sản phẩm tốt', 4, 111, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (667, N'Chất lượng sản tạm ổn', 5, 112, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (668, N'Chất lượng sản phẩm tốt', 3, 112, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (669, N'Chất lượng sản phẩm tốt', 4, 112, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (670, N'Phù hợp với túi tiền', 4, 112, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (671, N'Sản phẩm mặc thoáng mát', 4, 112, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (672, N'Chất lượng sản phẩm tốt', 5, 113, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (673, N'Chất lượng sản tạm ổn', 5, 113, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (674, N'Chất lượng sản phẩm tốt', 5, 113, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (675, N'Chất lượng sản phẩm tốt', 3, 113, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (676, N'Chất lượng sản tạm ổn', 3, 113, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (677, N'Phù hợp với túi tiền', 5, 113, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (678, N'Sản phẩm mặc thoáng mát', 5, 114, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (679, N'Giá thành hợp lý', 3, 114, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (680, N'Giá thành hợp lý', 4, 114, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (681, N'Giá thành hợp lý', 5, 114, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (682, N'Phù hợp với túi tiền', 5, 114, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (683, N'Giá thành hợp lý', 5, 114, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (684, N'Phù hợp với túi tiền', 5, 114, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (685, N'Giá thành hợp lý', 5, 115, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (686, N'Chất lượng sản tạm ổn', 5, 115, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (687, N'Chất lượng sản tạm ổn', 4, 115, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (688, N'Giá thành hợp lý', 4, 115, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (689, N'Sản phẩm mặc thoáng mát', 5, 115, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (690, N'Giá thành hợp lý', 5, 116, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (691, N'Chất lượng sản phẩm tốt', 3, 116, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (692, N'Sản phẩm mặc thoáng mát', 4, 116, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (693, N'Phù hợp với túi tiền', 5, 116, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (694, N'Chất lượng sản tạm ổn', 4, 116, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (695, N'Phù hợp với túi tiền', 3, 116, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (696, N'Chất lượng sản phẩm tốt', 4, 117, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (697, N'Phù hợp với túi tiền', 5, 117, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (698, N'Chất lượng sản phẩm tốt', 4, 117, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (699, N'Chất lượng sản tạm ổn', 3, 117, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (700, N'Phù hợp với túi tiền', 5, 117, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (701, N'Chất lượng sản phẩm tốt', 5, 117, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (702, N'Chất lượng sản phẩm tốt', 4, 117, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (703, N'Giá thành hợp lý', 4, 118, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (704, N'Giá thành hợp lý', 3, 118, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (705, N'Phù hợp với túi tiền', 4, 118, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (706, N'Giá thành hợp lý', 3, 118, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (707, N'Chất lượng sản tạm ổn', 4, 118, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (708, N'Phù hợp với túi tiền', 4, 119, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (709, N'Chất lượng sản tạm ổn', 3, 119, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (710, N'Chất lượng sản tạm ổn', 3, 119, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (711, N'Sản phẩm mặc thoáng mát', 5, 119, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (712, N'Giá thành hợp lý', 5, 119, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (713, N'Giá thành hợp lý', 5, 119, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (714, N'Sản phẩm mặc thoáng mát', 5, 120, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (715, N'Phù hợp với túi tiền', 3, 120, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (716, N'Chất lượng sản phẩm tốt', 4, 120, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (717, N'Chất lượng sản phẩm tốt', 5, 120, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (718, N'Sản phẩm mặc thoáng mát', 5, 120, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (719, N'Giá thành hợp lý', 5, 120, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (720, N'Chất lượng sản tạm ổn', 4, 120, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (721, N'Chất lượng sản phẩm tốt', 3, 121, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (722, N'Chất lượng sản phẩm tốt', 5, 121, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (723, N'Chất lượng sản tạm ổn', 4, 121, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (724, N'Chất lượng sản tạm ổn', 3, 121, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (725, N'Phù hợp với túi tiền', 4, 121, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (726, N'Phù hợp với túi tiền', 5, 122, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (727, N'Sản phẩm mặc thoáng mát', 4, 122, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (728, N'Chất lượng sản tạm ổn', 5, 122, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (729, N'Chất lượng sản phẩm tốt', 3, 122, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (730, N'Phù hợp với túi tiền', 5, 122, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (731, N'Chất lượng sản tạm ổn', 3, 122, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (732, N'Chất lượng sản tạm ổn', 4, 123, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (733, N'Chất lượng sản phẩm tốt', 5, 123, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (734, N'Chất lượng sản tạm ổn', 4, 123, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (735, N'Chất lượng sản tạm ổn', 5, 123, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (736, N'Giá thành hợp lý', 5, 123, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (737, N'Chất lượng sản phẩm tốt', 5, 123, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (738, N'Giá thành hợp lý', 4, 123, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (739, N'Sản phẩm mặc thoáng mát', 5, 124, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (740, N'Giá thành hợp lý', 4, 124, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (741, N'Chất lượng sản tạm ổn', 4, 124, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (742, N'Chất lượng sản phẩm tốt', 3, 124, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (743, N'Chất lượng sản phẩm tốt', 5, 124, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (744, N'Chất lượng sản tạm ổn', 4, 125, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (745, N'Sản phẩm mặc thoáng mát', 4, 125, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (746, N'Giá thành hợp lý', 4, 125, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (747, N'Chất lượng sản phẩm tốt', 3, 125, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (748, N'Sản phẩm mặc thoáng mát', 5, 125, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (749, N'Sản phẩm mặc thoáng mát', 4, 125, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (750, N'Phù hợp với túi tiền', 4, 126, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (751, N'Sản phẩm mặc thoáng mát', 5, 126, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (752, N'Sản phẩm mặc thoáng mát', 5, 126, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (753, N'Phù hợp với túi tiền', 5, 126, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (754, N'Chất lượng sản phẩm tốt', 5, 126, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (755, N'Sản phẩm mặc thoáng mát', 4, 126, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (756, N'Chất lượng sản phẩm tốt', 5, 126, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (757, N'Chất lượng sản phẩm tốt', 4, 127, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (758, N'Chất lượng sản tạm ổn', 3, 127, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (759, N'Phù hợp với túi tiền', 3, 127, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (760, N'Sản phẩm mặc thoáng mát', 3, 127, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (761, N'Chất lượng sản tạm ổn', 4, 127, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (762, N'Phù hợp với túi tiền', 5, 128, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (763, N'Chất lượng sản tạm ổn', 3, 128, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (764, N'Chất lượng sản phẩm tốt', 4, 128, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (765, N'Phù hợp với túi tiền', 5, 128, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (766, N'Sản phẩm mặc thoáng mát', 3, 128, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (767, N'Chất lượng sản phẩm tốt', 4, 128, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (768, N'Chất lượng sản phẩm tốt', 4, 129, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (769, N'Phù hợp với túi tiền', 4, 129, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (770, N'Giá thành hợp lý', 4, 129, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (771, N'Giá thành hợp lý', 3, 129, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (772, N'Chất lượng sản phẩm tốt', 5, 129, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (773, N'Phù hợp với túi tiền', 3, 129, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (774, N'Sản phẩm mặc thoáng mát', 3, 129, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (775, N'Giá thành hợp lý', 5, 130, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (776, N'Chất lượng sản tạm ổn', 5, 130, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (777, N'Chất lượng sản tạm ổn', 5, 130, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (778, N'Sản phẩm mặc thoáng mát', 5, 130, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (779, N'Giá thành hợp lý', 3, 130, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (780, N'Phù hợp với túi tiền', 4, 131, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (781, N'Chất lượng sản tạm ổn', 5, 131, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (782, N'Phù hợp với túi tiền', 4, 131, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (783, N'Phù hợp với túi tiền', 4, 131, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (784, N'Giá thành hợp lý', 3, 131, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (785, N'Chất lượng sản tạm ổn', 5, 131, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (786, N'Chất lượng sản tạm ổn', 4, 132, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (787, N'Giá thành hợp lý', 5, 132, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (788, N'Sản phẩm mặc thoáng mát', 4, 132, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (789, N'Chất lượng sản phẩm tốt', 4, 132, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (790, N'Chất lượng sản tạm ổn', 3, 132, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (791, N'Chất lượng sản tạm ổn', 5, 132, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (792, N'Giá thành hợp lý', 3, 132, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (793, N'Chất lượng sản tạm ổn', 3, 133, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (794, N'Chất lượng sản tạm ổn', 4, 133, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (795, N'Chất lượng sản tạm ổn', 3, 133, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (796, N'Phù hợp với túi tiền', 4, 133, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (797, N'Phù hợp với túi tiền', 5, 133, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (798, N'Giá thành hợp lý', 3, 134, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (799, N'Phù hợp với túi tiền', 4, 134, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (800, N'Chất lượng sản phẩm tốt', 3, 134, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (801, N'Phù hợp với túi tiền', 3, 134, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (802, N'Sản phẩm mặc thoáng mát', 5, 134, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (803, N'Phù hợp với túi tiền', 3, 134, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (804, N'Chất lượng sản tạm ổn', 4, 135, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (805, N'Chất lượng sản phẩm tốt', 3, 135, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (806, N'Sản phẩm mặc thoáng mát', 4, 135, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (807, N'Chất lượng sản phẩm tốt', 3, 135, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (808, N'Sản phẩm mặc thoáng mát', 5, 135, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (809, N'Sản phẩm mặc thoáng mát', 5, 135, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (810, N'Chất lượng sản phẩm tốt', 5, 135, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (811, N'Phù hợp với túi tiền', 3, 136, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (812, N'Chất lượng sản phẩm tốt', 3, 136, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (813, N'Giá thành hợp lý', 3, 136, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (814, N'Chất lượng sản tạm ổn', 5, 136, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (815, N'Chất lượng sản phẩm tốt', 5, 136, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (816, N'Sản phẩm mặc thoáng mát', 5, 137, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (817, N'Sản phẩm mặc thoáng mát', 4, 137, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (818, N'Chất lượng sản phẩm tốt', 3, 137, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (819, N'Giá thành hợp lý', 4, 137, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (820, N'Sản phẩm mặc thoáng mát', 4, 137, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (821, N'Chất lượng sản phẩm tốt', 5, 137, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (822, N'Sản phẩm mặc thoáng mát', 4, 138, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (823, N'Phù hợp với túi tiền', 4, 138, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (824, N'Phù hợp với túi tiền', 4, 138, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (825, N'Giá thành hợp lý', 5, 138, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (826, N'Phù hợp với túi tiền', 3, 138, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (827, N'Phù hợp với túi tiền', 4, 138, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (828, N'Sản phẩm mặc thoáng mát', 5, 138, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (829, N'Chất lượng sản tạm ổn', 5, 139, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (830, N'Chất lượng sản tạm ổn', 3, 139, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (831, N'Chất lượng sản phẩm tốt', 5, 139, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (832, N'Chất lượng sản tạm ổn', 5, 139, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (833, N'Chất lượng sản phẩm tốt', 3, 139, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (834, N'Giá thành hợp lý', 4, 140, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (835, N'Giá thành hợp lý', 3, 140, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (836, N'Phù hợp với túi tiền', 4, 140, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (837, N'Giá thành hợp lý', 4, 140, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (838, N'Chất lượng sản tạm ổn', 4, 140, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (839, N'Chất lượng sản tạm ổn', 3, 140, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (840, N'Sản phẩm mặc thoáng mát', 5, 141, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (841, N'Giá thành hợp lý', 4, 141, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (842, N'Chất lượng sản phẩm tốt', 5, 141, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (843, N'Chất lượng sản phẩm tốt', 4, 141, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (844, N'Chất lượng sản tạm ổn', 5, 141, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (845, N'Phù hợp với túi tiền', 5, 141, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (846, N'Phù hợp với túi tiền', 4, 141, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (847, N'Giá thành hợp lý', 4, 142, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (848, N'Chất lượng sản phẩm tốt', 4, 142, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (849, N'Chất lượng sản phẩm tốt', 4, 142, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (850, N'Phù hợp với túi tiền', 5, 142, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (851, N'Chất lượng sản phẩm tốt', 4, 142, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (852, N'Giá thành hợp lý', 5, 143, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (853, N'Sản phẩm mặc thoáng mát', 5, 143, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (854, N'Chất lượng sản phẩm tốt', 4, 143, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (855, N'Sản phẩm mặc thoáng mát', 3, 143, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (856, N'Chất lượng sản tạm ổn', 3, 143, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (857, N'Sản phẩm mặc thoáng mát', 5, 143, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (858, N'Sản phẩm mặc thoáng mát', 4, 144, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (859, N'Chất lượng sản phẩm tốt', 5, 144, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (860, N'Chất lượng sản phẩm tốt', 5, 144, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (861, N'Sản phẩm mặc thoáng mát', 5, 144, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (862, N'Chất lượng sản tạm ổn', 4, 144, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (863, N'Chất lượng sản tạm ổn', 5, 144, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (864, N'Phù hợp với túi tiền', 4, 144, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (865, N'Chất lượng sản phẩm tốt', 3, 145, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (866, N'Giá thành hợp lý', 5, 145, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (867, N'Chất lượng sản phẩm tốt', 3, 145, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (868, N'Giá thành hợp lý', 3, 145, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (869, N'Chất lượng sản tạm ổn', 5, 145, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (870, N'Sản phẩm mặc thoáng mát', 3, 146, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (871, N'Phù hợp với túi tiền', 5, 146, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (872, N'Chất lượng sản phẩm tốt', 4, 146, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (873, N'Sản phẩm mặc thoáng mát', 5, 146, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (874, N'Giá thành hợp lý', 4, 146, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (875, N'Phù hợp với túi tiền', 5, 146, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (876, N'Sản phẩm mặc thoáng mát', 5, 147, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (877, N'Chất lượng sản phẩm tốt', 4, 147, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (878, N'Giá thành hợp lý', 5, 147, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (879, N'Sản phẩm mặc thoáng mát', 3, 147, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (880, N'Sản phẩm mặc thoáng mát', 4, 147, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (881, N'Giá thành hợp lý', 4, 147, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (882, N'Chất lượng sản phẩm tốt', 5, 147, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (883, N'Chất lượng sản tạm ổn', 3, 148, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (884, N'Chất lượng sản tạm ổn', 3, 148, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (885, N'Sản phẩm mặc thoáng mát', 5, 148, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (886, N'Chất lượng sản tạm ổn', 3, 148, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (887, N'Giá thành hợp lý', 5, 148, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (888, N'Chất lượng sản phẩm tốt', 4, 149, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (889, N'Giá thành hợp lý', 4, 149, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (890, N'Chất lượng sản tạm ổn', 3, 149, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (891, N'Giá thành hợp lý', 5, 149, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (892, N'Chất lượng sản tạm ổn', 5, 149, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (893, N'Giá thành hợp lý', 3, 149, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (894, N'Sản phẩm mặc thoáng mát', 3, 150, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (895, N'Phù hợp với túi tiền', 3, 150, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (896, N'Sản phẩm mặc thoáng mát', 4, 150, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (897, N'Chất lượng sản tạm ổn', 3, 150, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (898, N'Chất lượng sản tạm ổn', 5, 150, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (899, N'Giá thành hợp lý', 4, 150, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (900, N'Chất lượng sản tạm ổn', 5, 150, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (901, N'Phù hợp với túi tiền', 3, 151, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (902, N'Chất lượng sản phẩm tốt', 5, 151, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (903, N'Chất lượng sản phẩm tốt', 4, 151, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (904, N'Giá thành hợp lý', 5, 151, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (905, N'Chất lượng sản phẩm tốt', 5, 151, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (906, N'Chất lượng sản phẩm tốt', 5, 152, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (907, N'Chất lượng sản phẩm tốt', 3, 152, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (908, N'Giá thành hợp lý', 5, 152, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (909, N'Chất lượng sản tạm ổn', 4, 152, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (910, N'Chất lượng sản phẩm tốt', 4, 152, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (911, N'Sản phẩm mặc thoáng mát', 5, 152, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (912, N'Chất lượng sản tạm ổn', 3, 153, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (913, N'Chất lượng sản phẩm tốt', 3, 153, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (914, N'Giá thành hợp lý', 4, 153, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (915, N'Chất lượng sản phẩm tốt', 4, 153, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (916, N'Phù hợp với túi tiền', 5, 153, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (917, N'Chất lượng sản phẩm tốt', 4, 153, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (918, N'Sản phẩm mặc thoáng mát', 4, 153, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (919, N'Giá thành hợp lý', 5, 154, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (920, N'Chất lượng sản tạm ổn', 3, 154, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (921, N'Chất lượng sản tạm ổn', 5, 154, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (922, N'Phù hợp với túi tiền', 5, 154, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (923, N'Chất lượng sản tạm ổn', 5, 154, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (924, N'Phù hợp với túi tiền', 3, 155, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (925, N'Chất lượng sản phẩm tốt', 4, 155, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (926, N'Giá thành hợp lý', 5, 155, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (927, N'Sản phẩm mặc thoáng mát', 3, 155, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (928, N'Sản phẩm mặc thoáng mát', 4, 155, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (929, N'Chất lượng sản tạm ổn', 4, 155, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (930, N'Giá thành hợp lý', 4, 156, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (931, N'Chất lượng sản tạm ổn', 3, 156, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (932, N'Chất lượng sản tạm ổn', 4, 156, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (933, N'Sản phẩm mặc thoáng mát', 4, 156, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (934, N'Chất lượng sản phẩm tốt', 3, 156, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (935, N'Sản phẩm mặc thoáng mát', 3, 156, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (936, N'Sản phẩm mặc thoáng mát', 4, 156, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (937, N'Giá thành hợp lý', 4, 157, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (938, N'Phù hợp với túi tiền', 4, 157, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (939, N'Giá thành hợp lý', 3, 157, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (940, N'Giá thành hợp lý', 5, 157, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (941, N'Chất lượng sản phẩm tốt', 4, 157, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (942, N'Chất lượng sản phẩm tốt', 4, 158, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (943, N'Chất lượng sản tạm ổn', 3, 158, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (944, N'Sản phẩm mặc thoáng mát', 5, 158, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (945, N'Giá thành hợp lý', 4, 158, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (946, N'Phù hợp với túi tiền', 5, 158, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (947, N'Chất lượng sản phẩm tốt', 4, 158, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (948, N'Giá thành hợp lý', 4, 159, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (949, N'Chất lượng sản tạm ổn', 3, 159, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (950, N'Giá thành hợp lý', 4, 159, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (951, N'Phù hợp với túi tiền', 5, 159, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (952, N'Chất lượng sản tạm ổn', 4, 159, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (953, N'Sản phẩm mặc thoáng mát', 3, 159, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (954, N'Chất lượng sản tạm ổn', 3, 159, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (955, N'Sản phẩm mặc thoáng mát', 3, 160, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (956, N'Chất lượng sản phẩm tốt', 3, 160, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (957, N'Chất lượng sản tạm ổn', 4, 160, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (958, N'Chất lượng sản tạm ổn', 4, 160, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (959, N'Chất lượng sản phẩm tốt', 5, 160, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (960, N'Phù hợp với túi tiền', 5, 161, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (961, N'Giá thành hợp lý', 4, 161, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (962, N'Giá thành hợp lý', 4, 161, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (963, N'Sản phẩm mặc thoáng mát', 4, 161, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (964, N'Chất lượng sản tạm ổn', 5, 161, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (965, N'Chất lượng sản tạm ổn', 5, 161, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (966, N'Giá thành hợp lý', 3, 162, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (967, N'Chất lượng sản tạm ổn', 5, 162, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (968, N'Giá thành hợp lý', 3, 162, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (969, N'Chất lượng sản tạm ổn', 4, 162, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (970, N'Chất lượng sản tạm ổn', 4, 162, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (971, N'Chất lượng sản tạm ổn', 3, 162, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (972, N'Chất lượng sản tạm ổn', 5, 162, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (973, N'Giá thành hợp lý', 4, 163, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (974, N'Phù hợp với túi tiền', 3, 163, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (975, N'Giá thành hợp lý', 4, 163, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (976, N'Giá thành hợp lý', 4, 163, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (977, N'Sản phẩm mặc thoáng mát', 3, 163, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (978, N'Giá thành hợp lý', 4, 164, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (979, N'Chất lượng sản phẩm tốt', 4, 164, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (980, N'Phù hợp với túi tiền', 5, 164, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (981, N'Giá thành hợp lý', 4, 164, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (982, N'Phù hợp với túi tiền', 3, 164, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (983, N'Phù hợp với túi tiền', 4, 164, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (984, N'Chất lượng sản tạm ổn', 5, 165, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (985, N'Phù hợp với túi tiền', 4, 165, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (986, N'Giá thành hợp lý', 4, 165, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (987, N'Phù hợp với túi tiền', 5, 165, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (988, N'Giá thành hợp lý', 4, 165, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (989, N'Sản phẩm mặc thoáng mát', 4, 165, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (990, N'Chất lượng sản phẩm tốt', 5, 165, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (991, N'Giá thành hợp lý', 5, 166, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (992, N'Sản phẩm mặc thoáng mát', 5, 166, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (993, N'Phù hợp với túi tiền', 5, 166, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (994, N'Sản phẩm mặc thoáng mát', 4, 166, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (995, N'Giá thành hợp lý', 3, 166, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (996, N'Chất lượng sản phẩm tốt', 3, 167, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (997, N'Giá thành hợp lý', 3, 167, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (998, N'Sản phẩm mặc thoáng mát', 3, 167, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (999, N'Chất lượng sản tạm ổn', 4, 167, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1000, N'Giá thành hợp lý', 5, 167, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1001, N'Phù hợp với túi tiền', 5, 167, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1002, N'Sản phẩm mặc thoáng mát', 5, 168, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1003, N'Chất lượng sản tạm ổn', 5, 168, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1004, N'Sản phẩm mặc thoáng mát', 3, 168, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1005, N'Sản phẩm mặc thoáng mát', 4, 168, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1006, N'Phù hợp với túi tiền', 5, 168, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1007, N'Giá thành hợp lý', 5, 168, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1008, N'Giá thành hợp lý', 5, 168, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1009, N'Chất lượng sản phẩm tốt', 5, 169, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1010, N'Sản phẩm mặc thoáng mát', 3, 169, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1011, N'Chất lượng sản phẩm tốt', 4, 169, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1012, N'Sản phẩm mặc thoáng mát', 5, 169, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1013, N'Chất lượng sản tạm ổn', 4, 169, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1014, N'Sản phẩm mặc thoáng mát', 4, 170, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1015, N'Phù hợp với túi tiền', 3, 170, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1016, N'Chất lượng sản phẩm tốt', 5, 170, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1017, N'Chất lượng sản phẩm tốt', 3, 170, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1018, N'Chất lượng sản phẩm tốt', 3, 170, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1019, N'Sản phẩm mặc thoáng mát', 5, 170, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1020, N'Phù hợp với túi tiền', 3, 171, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1021, N'Chất lượng sản phẩm tốt', 4, 171, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1022, N'Phù hợp với túi tiền', 4, 171, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1023, N'Sản phẩm mặc thoáng mát', 3, 171, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1024, N'Chất lượng sản tạm ổn', 3, 171, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1025, N'Chất lượng sản phẩm tốt', 3, 171, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1026, N'Giá thành hợp lý', 4, 171, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1027, N'Phù hợp với túi tiền', 4, 172, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1028, N'Sản phẩm mặc thoáng mát', 3, 172, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1029, N'Phù hợp với túi tiền', 5, 172, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1030, N'Chất lượng sản phẩm tốt', 3, 172, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1031, N'Chất lượng sản phẩm tốt', 4, 172, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1032, N'Chất lượng sản tạm ổn', 5, 173, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1033, N'Sản phẩm mặc thoáng mát', 4, 173, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1034, N'Sản phẩm mặc thoáng mát', 3, 173, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1035, N'Phù hợp với túi tiền', 3, 173, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1036, N'Giá thành hợp lý', 5, 173, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1037, N'Chất lượng sản tạm ổn', 3, 173, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1038, N'Phù hợp với túi tiền', 3, 174, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1039, N'Sản phẩm mặc thoáng mát', 3, 174, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1040, N'Phù hợp với túi tiền', 4, 174, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1041, N'Chất lượng sản phẩm tốt', 4, 174, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1042, N'Chất lượng sản phẩm tốt', 3, 174, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1043, N'Phù hợp với túi tiền', 4, 174, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1044, N'Phù hợp với túi tiền', 3, 174, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1045, N'Phù hợp với túi tiền', 4, 175, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1046, N'Giá thành hợp lý', 5, 175, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1047, N'Phù hợp với túi tiền', 5, 175, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1048, N'Phù hợp với túi tiền', 5, 175, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1049, N'Phù hợp với túi tiền', 4, 175, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1050, N'Chất lượng sản phẩm tốt', 5, 176, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1051, N'Chất lượng sản tạm ổn', 5, 176, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1052, N'Phù hợp với túi tiền', 3, 176, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1053, N'Phù hợp với túi tiền', 3, 176, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1054, N'Phù hợp với túi tiền', 3, 176, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1055, N'Giá thành hợp lý', 5, 176, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1056, N'Phù hợp với túi tiền', 5, 177, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1057, N'Sản phẩm mặc thoáng mát', 4, 177, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1058, N'Chất lượng sản phẩm tốt', 4, 177, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1059, N'Sản phẩm mặc thoáng mát', 4, 177, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1060, N'Sản phẩm mặc thoáng mát', 3, 177, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1061, N'Chất lượng sản phẩm tốt', 4, 177, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1062, N'Sản phẩm mặc thoáng mát', 3, 177, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1063, N'Sản phẩm mặc thoáng mát', 5, 178, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1064, N'Sản phẩm mặc thoáng mát', 3, 178, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1065, N'Chất lượng sản tạm ổn', 5, 178, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1066, N'Chất lượng sản tạm ổn', 3, 178, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1067, N'Chất lượng sản tạm ổn', 4, 178, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1068, N'Giá thành hợp lý', 4, 179, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1069, N'Sản phẩm mặc thoáng mát', 4, 179, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1070, N'Giá thành hợp lý', 4, 179, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1071, N'Sản phẩm mặc thoáng mát', 3, 179, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1072, N'Chất lượng sản tạm ổn', 5, 179, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1073, N'Chất lượng sản tạm ổn', 3, 179, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1074, N'Chất lượng sản tạm ổn', 5, 180, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1075, N'Giá thành hợp lý', 5, 180, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1076, N'Chất lượng sản tạm ổn', 5, 180, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1077, N'Chất lượng sản tạm ổn', 5, 180, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1078, N'Phù hợp với túi tiền', 4, 180, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1079, N'Chất lượng sản phẩm tốt', 3, 180, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1080, N'Sản phẩm mặc thoáng mát', 3, 180, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1081, N'Chất lượng sản tạm ổn', 3, 181, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1082, N'Phù hợp với túi tiền', 4, 181, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1083, N'Phù hợp với túi tiền', 3, 181, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1084, N'Chất lượng sản tạm ổn', 4, 181, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1085, N'Phù hợp với túi tiền', 5, 181, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1086, N'Sản phẩm mặc thoáng mát', 5, 182, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1087, N'Chất lượng sản tạm ổn', 3, 182, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1088, N'Phù hợp với túi tiền', 5, 182, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1089, N'Chất lượng sản tạm ổn', 3, 182, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1090, N'Phù hợp với túi tiền', 3, 182, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1091, N'Sản phẩm mặc thoáng mát', 4, 182, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1092, N'Giá thành hợp lý', 5, 183, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1093, N'Giá thành hợp lý', 5, 183, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1094, N'Chất lượng sản phẩm tốt', 3, 183, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1095, N'Sản phẩm mặc thoáng mát', 3, 183, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1096, N'Giá thành hợp lý', 5, 183, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1097, N'Giá thành hợp lý', 4, 183, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1098, N'Chất lượng sản phẩm tốt', 4, 183, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1099, N'Chất lượng sản phẩm tốt', 3, 184, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1100, N'Chất lượng sản tạm ổn', 4, 184, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1101, N'Chất lượng sản tạm ổn', 4, 184, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1102, N'Giá thành hợp lý', 5, 184, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1103, N'Chất lượng sản phẩm tốt', 5, 184, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1104, N'Chất lượng sản tạm ổn', 3, 185, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1105, N'Phù hợp với túi tiền', 5, 185, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1106, N'Sản phẩm mặc thoáng mát', 5, 185, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1107, N'Sản phẩm mặc thoáng mát', 4, 185, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1108, N'Chất lượng sản phẩm tốt', 5, 185, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1109, N'Chất lượng sản tạm ổn', 3, 185, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1110, N'Giá thành hợp lý', 4, 186, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1111, N'Chất lượng sản tạm ổn', 4, 186, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1112, N'Phù hợp với túi tiền', 5, 186, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1113, N'Chất lượng sản phẩm tốt', 4, 186, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1114, N'Chất lượng sản tạm ổn', 4, 186, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1115, N'Chất lượng sản tạm ổn', 5, 186, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1116, N'Sản phẩm mặc thoáng mát', 3, 186, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1117, N'Chất lượng sản tạm ổn', 5, 187, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1118, N'Phù hợp với túi tiền', 3, 187, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1119, N'Phù hợp với túi tiền', 4, 187, 16, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1120, N'Sản phẩm mặc thoáng mát', 5, 187, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1121, N'Sản phẩm mặc thoáng mát', 5, 187, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1122, N'Chất lượng sản phẩm tốt', 4, 188, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1123, N'Sản phẩm mặc thoáng mát', 5, 188, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1124, N'Sản phẩm mặc thoáng mát', 4, 188, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1125, N'Sản phẩm mặc thoáng mát', 3, 188, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1126, N'Chất lượng sản phẩm tốt', 3, 188, 19, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1127, N'Chất lượng sản tạm ổn', 3, 188, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1128, N'Sản phẩm mặc thoáng mát', 5, 189, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1129, N'Sản phẩm mặc thoáng mát', 4, 189, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1130, N'Chất lượng sản phẩm tốt', 3, 189, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1131, N'Chất lượng sản phẩm tốt', 5, 189, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1132, N'Sản phẩm mặc thoáng mát', 4, 189, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1133, N'Chất lượng sản phẩm tốt', 4, 189, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1134, N'Phù hợp với túi tiền', 3, 189, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1135, N'Phù hợp với túi tiền', 4, 190, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1136, N'Giá thành hợp lý', 4, 190, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1137, N'Chất lượng sản phẩm tốt', 4, 190, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1138, N'Giá thành hợp lý', 4, 190, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1139, N'Sản phẩm mặc thoáng mát', 5, 190, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1140, N'Chất lượng sản phẩm tốt', 3, 191, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1141, N'Phù hợp với túi tiền', 3, 191, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1142, N'Giá thành hợp lý', 4, 191, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1143, N'Sản phẩm mặc thoáng mát', 4, 191, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1144, N'Sản phẩm mặc thoáng mát', 5, 191, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1145, N'Chất lượng sản tạm ổn', 4, 191, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1146, N'Phù hợp với túi tiền', 4, 192, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1147, N'Chất lượng sản phẩm tốt', 4, 192, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1148, N'Chất lượng sản phẩm tốt', 3, 192, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1149, N'Chất lượng sản phẩm tốt', 4, 192, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1150, N'Phù hợp với túi tiền', 5, 192, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1151, N'Chất lượng sản phẩm tốt', 5, 192, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1152, N'Giá thành hợp lý', 4, 192, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1153, N'Chất lượng sản phẩm tốt', 3, 193, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1154, N'Sản phẩm mặc thoáng mát', 4, 193, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1155, N'Giá thành hợp lý', 3, 193, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1156, N'Phù hợp với túi tiền', 3, 193, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1157, N'Phù hợp với túi tiền', 3, 193, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1158, N'Phù hợp với túi tiền', 5, 194, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1159, N'Giá thành hợp lý', 4, 194, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1160, N'Sản phẩm mặc thoáng mát', 3, 194, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1161, N'Phù hợp với túi tiền', 3, 194, 15, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1162, N'Sản phẩm mặc thoáng mát', 5, 194, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1163, N'Chất lượng sản tạm ổn', 3, 194, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1164, N'Chất lượng sản tạm ổn', 4, 195, 14, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1165, N'Giá thành hợp lý', 4, 195, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1166, N'Chất lượng sản phẩm tốt', 4, 195, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1167, N'Giá thành hợp lý', 3, 195, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1168, N'Chất lượng sản phẩm tốt', 5, 195, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1169, N'Sản phẩm mặc thoáng mát', 4, 195, 18, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1170, N'Chất lượng sản phẩm tốt', 4, 195, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1171, N'Giá thành hợp lý', 5, 196, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1172, N'Chất lượng sản tạm ổn', 5, 196, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1173, N'Chất lượng sản phẩm tốt', 5, 196, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1174, N'Chất lượng sản phẩm tốt', 3, 196, 11, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1175, N'Giá thành hợp lý', 4, 196, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1176, N'Chất lượng sản phẩm tốt', 3, 197, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1177, N'Sản phẩm mặc thoáng mát', 5, 197, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1178, N'Giá thành hợp lý', 3, 197, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1179, N'Chất lượng sản tạm ổn', 4, 197, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1180, N'Giá thành hợp lý', 3, 197, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1181, N'Phù hợp với túi tiền', 4, 197, 17, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1182, N'Sản phẩm mặc thoáng mát', 3, 198, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1183, N'Phù hợp với túi tiền', 4, 198, 9, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1184, N'Sản phẩm mặc thoáng mát', 4, 198, 4, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1185, N'Sản phẩm mặc thoáng mát', 4, 198, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1186, N'Chất lượng sản tạm ổn', 4, 198, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1187, N'Phù hợp với túi tiền', 5, 198, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1188, N'Chất lượng sản tạm ổn', 4, 198, 12, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1189, N'Giá thành hợp lý', 5, 199, 3, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1190, N'Chất lượng sản phẩm tốt', 3, 199, 5, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1191, N'Chất lượng sản phẩm tốt', 3, 199, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1192, N'Chất lượng sản phẩm tốt', 5, 199, 8, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1193, N'Sản phẩm mặc thoáng mát', 3, 199, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1194, N'Phù hợp với túi tiền', 4, 200, 7, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1195, N'Phù hợp với túi tiền', 3, 200, 13, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1196, N'Chất lượng sản phẩm tốt', 5, 200, 2, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1197, N'Chất lượng sản phẩm tốt', 4, 200, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1198, N'Chất lượng sản phẩm tốt', 5, 200, 6, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([id], [content], [quantity], [product_id], [user_id], [date]) VALUES (1199, N'Phù hợp với túi tiền', 4, 200, 20, CAST(N'2023-11-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([id], [name]) VALUES (3, N'L')
INSERT [dbo].[Size] ([id], [name]) VALUES (2, N'M')
INSERT [dbo].[Size] ([id], [name]) VALUES (1, N'S')
INSERT [dbo].[Size] ([id], [name]) VALUES (4, N'XL')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (1, N'Admin', N'admin@fpt', N'123456', N'0123456789', 1, N'admin', 1, 1)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (2, N'Nguyễn Thị Hường', N'huong@fpt', N'123456', N'0123456789', 1, N'user', 2, 2)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (3, N'Nguyễn Văn An', N'user3@email.com', N'123456', N'0123456789', 1, N'user', 3, 3)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (4, N'Trần Thị Bảo', N'user4@email.com', N'123456', N'0123456789', 0, N'user', 4, 4)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (5, N'Lê Văn Cường', N'user5@email.com', N'123456', N'0123456789', 1, N'user', 5, 5)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (6, N'Phạm Thị Diệu', N'user6@email.com', N'123456', N'0123456789', 1, N'user', 6, 6)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (7, N'Hoàng Văn Đức', N'user7@email.com', N'123456', N'0123456789', 0, N'user', 7, 7)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (8, N'Huỳnh Thị Phương', N'user8@email.com', N'123456', N'0123456789', 1, N'user', 8, 8)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (9, N'Phan Văn Giang', N'user9@email.com', N'123456', N'0123456789', 1, N'user', 9, 9)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (10, N'Võ Thị Hà', N'user10@email.com', N'123456', N'0123456789', 0, N'user', 10, 10)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (11, N'Đặng Văn Hải', N'user11@email.com', N'123456', N'0123456789', 1, N'user', 11, 11)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (12, N'Bùi Thị Kim', N'user12@email.com', N'123456', N'0123456789', 1, N'user', 12, 12)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (13, N'Đỗ Văn Lợi', N'user13@email.com', N'123456', N'0123456789', 0, N'user', 13, 13)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (14, N'Hồ Thị Mai', N'user14@email.com', N'123456', N'0123456789', 1, N'user', 14, 14)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (15, N'Ngô Văn Nam', N'user15@email.com', N'123456', N'0123456789', 1, N'user', 15, 15)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (16, N'Dương Thị Phượng', N'user16@email.com', N'123456', N'0123456789', 0, N'user', 16, 16)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (17, N'Lý Văn Quốc', N'user17@email.com', N'123456', N'0123456789', 1, N'user', 17, 17)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (18, N'Trương Thị Lan
', N'user18@email.com', N'123456', N'0123456789', 1, N'user', 18, 18)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (19, N'Mai Văn Sơn', N'user19@email.com', N'123456', N'0123456789', 0, N'user', 19, 19)
INSERT [dbo].[User] ([id], [fullName], [email], [password], [phone], [status], [role], [wishlist_id], [cart_id]) VALUES (20, N'Lương Thị Thu', N'user20@email.com', N'123456', N'0123456789', 1, N'user', 20, 20)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[WishItem] ON 

INSERT [dbo].[WishItem] ([id], [wishlist_id], [product_id]) VALUES (1, 2, 23)
INSERT [dbo].[WishItem] ([id], [wishlist_id], [product_id]) VALUES (2, 2, 192)
INSERT [dbo].[WishItem] ([id], [wishlist_id], [product_id]) VALUES (3, 2, 52)
SET IDENTITY_INSERT [dbo].[WishItem] OFF
GO
SET IDENTITY_INSERT [dbo].[WishList] ON 

INSERT [dbo].[WishList] ([id], [user_id]) VALUES (1, 1)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (2, 2)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (3, 3)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (4, 4)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (5, 5)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (6, 6)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (7, 7)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (8, 8)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (9, 9)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (10, 10)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (11, 11)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (12, 12)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (13, 13)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (14, 14)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (15, 15)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (16, 16)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (17, 17)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (18, 18)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (19, 19)
INSERT [dbo].[WishList] ([id], [user_id]) VALUES (20, 20)
SET IDENTITY_INSERT [dbo].[WishList] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Size__72E12F1B0C215E03]    Script Date: 11/10/2023 10:49:30 AM ******/
ALTER TABLE [dbo].[Size] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__User__2EF52A261A4E781B]    Script Date: 11/10/2023 10:49:30 AM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__User__6151514F64DDE673]    Script Date: 11/10/2023 10:49:30 AM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[wishlist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[Category] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Color] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Color]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[Size] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_cart]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_wishlist] FOREIGN KEY([wishlist_id])
REFERENCES [dbo].[WishList] ([id])ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_wishlist]
GO
ALTER TABLE [dbo].[WishItem]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[WishItem]  WITH CHECK ADD FOREIGN KEY([wishlist_id])
REFERENCES [dbo].[WishList] ([id])  ON DELETE CASCADE;
GO
USE [master]
GO
ALTER DATABASE [JollyShoppingOnline] SET  READ_WRITE 
GO
