USE [master]
GO
/****** Object:  Database [khoaluan]    Script Date: 5/17/2022 10:49:06 PM ******/
CREATE DATABASE [khoaluan]
GO
ALTER DATABASE [khoaluan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [khoaluan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [khoaluan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [khoaluan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [khoaluan] SET ARITHABORT OFF 
GO
ALTER DATABASE [khoaluan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [khoaluan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [khoaluan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [khoaluan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [khoaluan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [khoaluan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [khoaluan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [khoaluan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [khoaluan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [khoaluan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [khoaluan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [khoaluan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [khoaluan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [khoaluan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [khoaluan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [khoaluan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [khoaluan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [khoaluan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [khoaluan] SET  MULTI_USER 
GO
ALTER DATABASE [khoaluan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [khoaluan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [khoaluan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [khoaluan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [khoaluan] SET DELAYED_DURABILITY = DISABLED 
GO
USE [khoaluan]
GO
/****** Object:  FullTextCatalog [Bogs_ctlg]    Script Date: 5/17/2022 10:49:06 PM ******/
CREATE FULLTEXT CATALOG [Bogs_ctlg]WITH ACCENT_SENSITIVITY = OFF

GO
/****** Object:  FullTextCatalog [product_ctlg]    Script Date: 5/17/2022 10:49:06 PM ******/
CREATE FULLTEXT CATALOG [product_ctlg]WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT

GO
/****** Object:  Table [dbo].[About]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[ID_About] [nvarchar](20) NOT NULL,
	[Image_About] [varchar](max) NULL,
	[Content_About] [nvarchar](2000) NULL,
	[Email] [varchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID_About] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID_Account] [varchar](20) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[Access] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Category] [varchar](20) NOT NULL,
	[Name_Category] [nvarchar](50) NULL,
	[Parent_Category] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[ID_Comment] [bigint] NOT NULL,
	[Content] [nvarchar](200) NULL,
	[Date_created] [datetime] NULL,
	[ID_Product] [varchar](20) NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Parents_comment_id] [varchar](50) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID_Comment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Image_Advertises]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_Advertises](
	[ID_Advertise] [int] IDENTITY(1,1) NOT NULL,
	[Image_Advertise1] [nvarchar](max) NULL,
	[Image_Advertise2] [nvarchar](max) NULL,
	[Image_Advertise3] [nvarchar](max) NULL,
	[Image_Advertise4] [nvarchar](max) NULL,
	[Image_Advertise5] [nvarchar](max) NULL,
 CONSTRAINT [PK_Advertises] PRIMARY KEY CLUSTERED 
(
	[ID_Advertise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImageDetail]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageDetail](
	[ID_Image] [int] IDENTITY(1,1) NOT NULL,
	[Detail_Image] [varchar](max) NULL,
	[ID_Product] [varchar](20) NULL,
	[Detail_Image1] [varchar](max) NULL,
	[Detail_Image2] [varchar](max) NULL,
 CONSTRAINT [PK_ImageDetail] PRIMARY KEY CLUSTERED 
(
	[ID_Image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID_Invoice] [varchar](20) NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Shipping_Address] [nvarchar](50) NULL,
	[Payment_Methods] [nvarchar](50) NULL,
	[Purchase_Date] [datetime] NULL,
	[Status_Order] [int] NULL,
	[Total_Invoice] [int] NULL,
	[ID_Employee] [varchar](20) NULL,
	[Time_Limit] [datetime] NULL,
	[Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID_Invoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[ID_InvoiceDetail] [int] NOT NULL,
	[ID_Invoice] [varchar](20) NULL,
	[ID_Product] [varchar](20) NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[ID_InvoiceDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[ID_News] [nvarchar](20) NOT NULL,
	[ID_News_Category] [varchar](20) NULL,
	[Name_News] [nvarchar](200) NULL,
	[Image_News] [nvarchar](max) NULL,
	[Posting_Date] [date] NULL,
	[Describe_News] [nvarchar](300) NULL,
	[Detail_News] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID_News] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News_Category]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News_Category](
	[ID_News_Category] [varchar](20) NOT NULL,
	[Name_News_Category] [nvarchar](50) NULL,
	[Parent_News] [nvarchar](50) NULL,
 CONSTRAINT [PK_News_Category] PRIMARY KEY CLUSTERED 
(
	[ID_News_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [varchar](20) NOT NULL,
	[ID_Category] [varchar](20) NULL,
	[Name_Product] [nvarchar](50) NULL,
	[Image] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[Describe] [nvarchar](2000) NULL,
	[Size] [nvarchar](100) NULL,
	[Material] [nvarchar](200) NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
	[ID_Season] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_ReceiptDetail]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_ReceiptDetail](
	[id_pro_rd] [int] NOT NULL,
	[ID_Product] [varchar](20) NULL,
	[ID_ReceiptDetail] [int] NULL,
 CONSTRAINT [PK_Seri] PRIMARY KEY CLUSTERED 
(
	[id_pro_rd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID_Receipt] [int] NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Created_date] [datetime] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Receipt_1] PRIMARY KEY CLUSTERED 
(
	[ID_Receipt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceiptDetail](
	[ID_ReceiptDetail] [int] NOT NULL,
	[ID_Product] [varchar](20) NULL,
	[ID_Receipt] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ID_ReceiptDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Season]    Script Date: 5/17/2022 10:49:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[ID_Season] [int] NOT NULL,
	[Name_Season] [nvarchar](50) NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[ID_Season] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[About] ([ID_About], [Image_About], [Content_About], [Email], [Address], [Phone]) VALUES (N'1', N'C:\Users\HP\images\gioithieu\gioithieu.jpg', N'Công ty Nội Thất 20 Sheets được thành lập từ năm 2000. Với slogan “Nội thất bếp hoàn hảo”, 20 sheets được biết đến là thương hiệu hàng đầu trong lĩnh vực tủ bếp cao cấp tại Việt Nam. Tiếp bước thành công này, 20 sheets mở rộng sang dòng sản phẩm nội thất phòng ngủ, phòng khách thiết kế riêng theo từng khách hàng và được thị trường đón nhận. Với slogan “Your Home, Your Design”, 20 sheets đem đến cho khách hàng dịch vụ thiết kế nội thất “đo ni đóng giày” cho nhiều dự án căn hộ, biệt thự... Đội ngũ nhân viên thiết kế và kinh doanh chuyên nghiệp luôn tư vấn cho khách hàng lựa chọn sản phẩm phù hợp với không gian sống, sở thích và nhu cầu sử dụng. 20 sheets đáp ứng được đầy đủ các yêu cầu khắt khe của phân khúc nội thất “whole-house furniture customization” và làm hài lòng được các khách hàng khó tính nhất. Trong quá trình hoạt động chúng tôi đã không ngừng nâng cao đội ngũ nhân sự, mở rộng nhà xưởng - đầu tư thiết bị máy móc cũng như qui trình làm việc để trở thành NHÀ SẢN XUẤT TỦ BẾP - NỘI THẤT CHUYÊN NGHIÊP. Nhà máy sản xuất với diện tích hơn 7.000m2 được trang bị hệ thống máy móc hiện đại theo tiêu chuẩn Châu Âu, do tập đoàn HOMAG - ĐỨC và BIESSE - Ý chế tạo. Chúng tôi cung cấp sản phẩm cho khách hàng đạt tiêu chuẩn cao về mỹ thuật, chất lượng, phù hợp sự phát triển nội thất khu vực.', N'furniture230900@gmail.com', N'02 Phạm Văn Đồng, Thành phố Huế, Thừa Thiên Huế', 367396802)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'AD101', N'admin', N'e1adc3949ba59abbe56e057f2f883e', N'phandinhthu230900@gmail.com', N'Admin ', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'0367396802', 1, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH102', N'phandinhthu', N'e1adc3949ba59abbe56e057f2f883e', N'phandinhthu@gmail.com', N'Phan Đình Thứ', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'0367396802', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1224276057757037', N'dinhthu', N'e1adc3949ba59abbe56e057f2f883e', N'dinhthu@gmail.com', N'Đình Thứ', N'Thừa Thiên Huế', N'0386300021', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1576290996940', N'nhanvien1', N'95ec2e295d99fa60fbb1e245175a25', N'nhanvien1@gmail.com', N'phandinhthu', N'Thừa Thiên Huế', N'0932332780', 2, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email], [Full_Name], [Address], [SDT], [Access], [Status]) VALUES (N'KH1651311949225', N'letuananh', N'e1adc3949ba59abbe56e057f2f883e', N'letuananh@gmail.com', N'Lê Tuấn Anh', N'Thừa Thiên Huế', N'0367592563', 2, 1)
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'BAN', N'BÀN', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'GD', N'NỘI THẤT', N'null')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'GHE', N'GHẾ', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'SOFA', N'GHẾ SOFA', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'TB', N'HÀNG TRANG TRÍ', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'TGD', N'ĐỒ GIA DỤNG', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'TK', N'TỦ - KỆ', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'YDEN', N'ĐÈN TRANG TRÍ', N'GD')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'YK', N'PHỤ KIỆN', N'GD')
SET IDENTITY_INSERT [dbo].[Image_Advertises] ON 

INSERT [dbo].[Image_Advertises] ([ID_Advertise], [Image_Advertise1], [Image_Advertise2], [Image_Advertise3], [Image_Advertise4], [Image_Advertise5]) VALUES (1, N'images/home/slide2.jpg', N'images/home/slide13.jpg', N'images/home/slide15.jpg', N'images/home/slide1.jpg', N'images/home/slide12.jpg')
SET IDENTITY_INSERT [dbo].[Image_Advertises] OFF
SET IDENTITY_INSERT [dbo].[ImageDetail] ON 

INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (1, N'images/sanpham/tuke3a.jpg', N'123', N'images/sanpham/tuke3b.jpg', N'images/sanpham/tuke3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (2, N'images/sanpham/tuke2a.jpg', N'122', N'images/sanpham/tuke2b.jpg', N'images/sanpham/tuke2c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (3, N'images/sanpham/tuke1a.jpg', N'121', N'images/sanpham/tuke1b.jpg', N'images/sanpham/tuke1c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (4, N'images/chitietsp/ghe5a.jpg', N'120', N'images/chitietsp/ghe5b.jpg', N'images/chitietsp/ghe5a.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (5, N'images/chitietsp/ghe4a.jpg', N'119', N'images/chitietsp/ghe4b.jpg', N'images/chitietsp/ghe4c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (6, N'images/chitietsp/ghe3a.jpg', N'118', N'images/chitietsp/ghe3b.jpg', N'images/chitietsp/ghe3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (7, N'images/chitietsp/ghe2a.jpg', N'117', N'images/chitietsp/ghe2b.jpg', N'images/chitietsp/ghe2c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (8, N'images/chitietsp/ghe1a.jpg', N'116', N'images/chitietsp/ghe1b.jpg', N'images/chitietsp/ghe1c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (9, N'images/chitietsp/ban15a.jpg', N'115', N'images/chitietsp/ban15b.jpg', N'images/chitietsp/ban15c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (10, N'images/chitietsp/ban14a.jpg', N'114', N'images/chitietsp/ban14b.jpg', N'images/chitietsp/ban14c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (11, N'images/chitietsp/ban13a.jpg', N'113', N'images/chitietsp/ban13b.jpg', N'images/chitietsp/ban13c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (12, N'images/chitietsp/ban12a.jpg', N'112', N'images/chitietsp/ban12b.jpg', N'images/chitietsp/ban12c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (13, N'images/chitietsp/ban11a.jpg', N'111', N'images/chitietsp/ban11b.jpg', N'images/chitietsp/ban11c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (14, N'images/chitietsp/ban10a.jpg', N'110', N'images/chitietsp/ban10b.jpg', N'images/chitietsp/ban10c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (15, N'images/chitietsp/ban9a.jpg', N'109', N'images/chitietsp/ban9b.jpg', N'images/chitietsp/ban9c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (16, N'images/chitietsp/ban8a.jpg', N'108', N'images/chitietsp/ban8b.jpg', N'images/chitietsp/ban8c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (17, N'images/chitietsp/ban7a.jpg', N'107', N'images/chitietsp/ban7b.jpg', N'images/chitietsp/ban7c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (18, N'images/chitietsp/ban6a.jpg', N'106', N'images/chitietsp/ban6b.jpg', N'images/chitietsp/ban6c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (19, N'images/chitietsp/ban5a.jpg', N'105', N'images/chitietsp/ban5b.jpg', N'images/chitietsp/ban5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (20, N'images/chitietsp/ban4a.jpg', N'104', N'images/chitietsp/ban4b.jpg', N'images/chitietsp/ban4c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (21, N'images/chitietsp/ban3a.jpg', N'103', N'images/chitietsp/ban3b.jpg', N'images/chitietsp/ban3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (22, N'images/chitietsp/ban2a.jpg', N'102', N'images/chitietsp/ban2b.jpg', N'images/chitietsp/ban2c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (23, N'images/chitietsp/ban1a.jpg', N'101', N'images/chitietsp/ban1b.jpg', N'images/chitietsp/ban1c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (24, N'images/sanpham/tuke4a.jpg', N'124', N'images/sanpham/tuke4b.jpg', N'images/sanpham/tuke4c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (25, N'images/sanpham/tuke3a.jpg', NULL, NULL, NULL)
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (26, N'images/sanpham/tuke5a.jpg', N'125', N'images/sanpham/tuke5b.jpg', N'images/sanpham/tuke5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (27, N'images/sanpham/hangtrangtri5a.jpg', N'126', N'images/sanpham/hangtrangtri5b.jpg', N'images/sanpham/hangtrangtri5c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (28, N'images/sanpham/hangtrangtri4a.jpg', N'127', N'images/sanpham/hangtrangtri4a.jpg', N'images/sanpham/hangtrangtri4a.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (29, N'images/sanpham/hangtrangtri3a.jpg', N'128', N'images/sanpham/hangtrangtri3b.jpg', N'images/sanpham/hangtrangtri3c.jpg')
INSERT [dbo].[ImageDetail] ([ID_Image], [Detail_Image], [ID_Product], [Detail_Image1], [Detail_Image2]) VALUES (30, NULL, N'129', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ImageDetail] OFF
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651308673015', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 15:51:13.017' AS DateTime), 1, 400000, N'AD101', CAST(N'2022-05-03 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651309454802', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán qua thẻ ngân hàng', CAST(N'2022-04-30 16:04:14.803' AS DateTime), 4, 599000, N'AD101', CAST(N'2022-05-03 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651310641674', N'KH1224276057757037', N'Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 16:24:01.673' AS DateTime), 1, 350000, N'AD101', CAST(N'2022-05-03 00:00:00.000' AS DateTime), N'nhẹ tay')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651310789712', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 16:26:29.713' AS DateTime), 3, 150000, N'0', CAST(N'2022-04-30 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651311657825', N'KH1224276057757037', N'Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 16:40:57.827' AS DateTime), 3, 1900000, N'0', CAST(N'2022-04-30 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651311685729', N'KH1224276057757037', N'Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 16:41:25.730' AS DateTime), 1, 449000, N'AD101', CAST(N'2022-05-03 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651311765691', N'KH1224276057757037', N'Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 16:42:45.690' AS DateTime), 2, 550000, N'0', CAST(N'2022-05-03 00:00:00.000' AS DateTime), N'nhẹ tay')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651313283809', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-04-30 17:08:03.810' AS DateTime), 3, 490000, N'0', CAST(N'2022-05-05 00:00:00.000' AS DateTime), N'')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651379458616', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-05-01 11:30:58.807' AS DateTime), 3, 3400000, N'0', CAST(N'2022-05-01 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651477447836', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-05-02 14:44:07.837' AS DateTime), 3, 3580000, N'0', CAST(N'2022-05-05 00:00:00.000' AS DateTime), N'nhẹ tay')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651477492318', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-05-02 14:44:52.317' AS DateTime), 2, 5400000, N'0', CAST(N'2022-05-05 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651477538567', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-05-02 14:45:38.567' AS DateTime), 3, 199000, N'0', CAST(N'2022-05-04 00:00:00.000' AS DateTime), N'nhẹ tay')
INSERT [dbo].[Invoice] ([ID_Invoice], [ID_Account], [Shipping_Address], [Payment_Methods], [Purchase_Date], [Status_Order], [Total_Invoice], [ID_Employee], [Time_Limit], [Note]) VALUES (N'MHD1651767906430', N'KH102', N'Quảng Thành, Quảng Điền, Thừa Thiên Huế', N'Thanh toán khi giao hàng', CAST(N'2022-05-05 23:25:06.433' AS DateTime), 2, 3600000, N'0', CAST(N'2022-05-08 00:00:00.000' AS DateTime), N'giao nhanh')
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (22265782, N'MHD1651311685729', N'102', 1, 299000, 0, 299000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (36394700, N'MHD1651477538567', N'110', 1, 199000, 0, 199000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (39322220, N'MHD1651311657825', N'105', 1, 150000, 0, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (41689375, N'MHD1651477447836', N'120', 2, 1790000, 0, 3580000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (60987774, N'MHD1651313283809', N'107', 1, 490000, 0, 490000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (69909430, N'MHD1651310641674', N'122', 1, 300000, 100000, 200000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (104166470, N'MHD1651310789712', N'105', 1, 150000, 0, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (108112337, N'MHD1651311685729', N'124', 1, 250000, 100000, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (133045604, N'MHD1651309454802', N'105', 2, 150000, 0, 300000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (144536322, N'MHD1651311765691', N'104', 1, 350000, 0, 350000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (148224077, N'MHD1651308673015', N'127', 1, 250000, 0, 250000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (150993117, N'MHD1651309454802', N'102', 1, 299000, 0, 299000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (178718440, N'MHD1651308673015', N'124', 1, 250000, 100000, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (179194024, N'MHD1651311765691', N'121', 1, 300000, 100000, 200000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (180291302, N'MHD1651311657825', N'118', 1, 1750000, 0, 1750000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (187668515, N'MHD1651379458616', N'108', 1, 3500000, 100000, 3400000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (187801799, N'MHD1651477492318', N'115', 2, 3200000, 500000, 5400000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (203372582, N'MHD1651310641674', N'124', 1, 250000, 100000, 150000)
INSERT [dbo].[InvoiceDetail] ([ID_InvoiceDetail], [ID_Invoice], [ID_Product], [Quantity], [Price], [Sale], [Total]) VALUES (214066929, N'MHD1651767906430', N'106', 2, 1800000, 0, 3600000)
INSERT [dbo].[News] ([ID_News], [ID_News_Category], [Name_News], [Image_News], [Posting_Date], [Describe_News], [Detail_News]) VALUES (N'TT001', N'LT002', N'XU HƯỚNG NỘI THẤT PHÒNG NGỦ CỰC HOT CHO NĂM 2022', N'C:\Users\HP\images\tintuc\tintuc3.jpg', CAST(N'2022-04-04' AS Date), N'Nội thất phòng ngủ 2016 sẽ được thiết kế giản đơn, gần gũi với thiên nhiên nhưng vô cùng tinh tế và hiện đại. Nội thất phòng ngủ 2016 sẽ được thiết kế giản đơn, gần gũi với thiên nhiên nhưng vô cùng tinh tế và hiện đại. ', N'<p>Xu hướng giường ngủ năm nay sẽ l&agrave; những chiếc giường kh&ocirc;ng ch&acirc;n, hoặc giường ch&acirc;n thấp, khung giường sẽ ho&agrave;n to&agrave;n biến mất. Giường ngủ với dạng thiết kế bệt, phần khung cứng c&aacute;p cũng ho&agrave;n to&agrave;n biến mất, thay v&agrave;o đ&oacute; l&agrave; lớp nệm d&agrave;y ấm &aacute;p v&agrave; mềm mại. Chiếc giường với phần ch&acirc;n v&ocirc; c&ugrave;ng thấp. Kh&ocirc;ng sử dụng giường, kh&ocirc;ng gian ph&ograve;ng ngủ l&agrave; chiếc đệm cỡ lớn, phần tường ph&iacute;a đầu giường được bọc nệm tạo cảm gi&aacute;c giống như một bảng đầu giường cỡ lớn. Gam m&agrave;u trầm ấm của gỗ kết hợp th&ecirc;m &aacute;nh đ&egrave;n gi&uacute;p tạo cảm gi&aacute;c thư gi&atilde;n v&agrave; ấm c&uacute;ng. Ngo&agrave;i ra, &yacute; tưởng giường treo cũng sẽ trở th&agrave;nh xu hướng trong năm nay.</p>
')
INSERT [dbo].[News] ([ID_News], [ID_News_Category], [Name_News], [Image_News], [Posting_Date], [Describe_News], [Detail_News]) VALUES (N'TT002', N'LT003', N'CUỘC THI NTK  NIPPON 2022 CHIẾN THẮNG ẤN TƯỢNG', N'C:\Users\HP\images\tintuc\tintuc4.jpg', CAST(N'2022-04-27' AS Date), N'Ngày 05 tháng 01 năm 2022, Nippon Paint Việt Nam tổ chức vòng Chung kết cuộc thi Nhà Thiết Kế Trẻ Nippon Paint 2022 nhằm tìm kiếm tài năng thiết kế với những ý tưởng có thể thay đổi diện mạo Kiến trúc tương lai.', N'<p>Cuộc thi năm nay lấy chủ đề &ldquo;Thiết kế bằng tr&aacute;i tim. V&igrave; lợi &iacute;ch cộng đồng: Cho tương lai bền vững&rdquo;, y&ecirc;u cầu sinh vi&ecirc;n tạo ra một kh&ocirc;ng gian c&oacute; thể phục vụ cho người sử dụng ở nhiều tầng lớp v&agrave; ho&agrave;n cảnh kh&aacute;c nhau từ người gi&agrave;, người trẻ, b&agrave; mẹ đang nu&ocirc;i con, người khuyết tật v&agrave; nhiều đối tượng kh&aacute;c. Cuộc thi gồm 2 mảng Thiết kế Nội thất với chủ đề thiết kế kh&ocirc;ng gian l&agrave;m việc hiện đại, v&agrave; Thiết kế Kiến tr&uacute;c với chủ đề Kh&ocirc;ng gian tương t&aacute;c cộng đồng. V&ograve;ng chung kết l&agrave; cơ hội tuyệt vời để c&aacute;c bạn sinh vi&ecirc;n được giao lưu, cạnh tranh l&agrave;nh mạnh, thể hiện &yacute; tưởng thiết kế trước c&aacute;c quan kh&aacute;ch c&oacute; mặt trong sự kiện v&agrave; chinh phục hội đồng gi&aacute;m khảo để trở th&agrave;nh người chiến thắng chung cuộc. Chương tr&igrave;nh c&oacute; sự tham dự của c&aacute;c đơn vị truyền th&ocirc;ng, c&aacute;c nh&agrave; t&agrave;i trợ, c&aacute;c trường đại học đối t&aacute;c, c&ugrave;ng sự cổ vũ của đ&ocirc;ng đảo cổ động vi&ecirc;n đến từ c&aacute;c trường đại học.</p>
')
INSERT [dbo].[News] ([ID_News], [ID_News_Category], [Name_News], [Image_News], [Posting_Date], [Describe_News], [Detail_News]) VALUES (N'TT003', N'LT001', N'TRANG TRÍ NHÀ ĐẸP VỚI NỘI THẤT MÀU CAM', N'C:\Users\HP\images\tintuc\tintuc5.jpg', CAST(N'2022-04-27' AS Date), N'Nội thất màu cam là những món đồ trang trí nhà đẹp và ấn tượng mang đến cảm giác tươi vui ấm cúng,  ấn tượng mang đến cảm giác tươi vui ấm cúng. Gần gũi với thiên nhiên nhưng vô cùng tinh tế và hiện đại.', N'<p>Căn ph&ograve;ng kh&aacute;ch m&agrave;u da cam l&agrave; một c&aacute;ch trang tr&iacute; nh&agrave; đẹp mang đến cảm gi&aacute;c năng động.&nbsp;Bạn c&oacute; thể sử dụng nội thất m&agrave;u cam xen kẽ với m&agrave;u trắng để tạo sự tươi vui, nổi bật cho căn ph&ograve;ng.&nbsp;&Yacute; tưởng trang tr&iacute; nh&agrave; theo chủ đề m&agrave;u cam c&oacute; thể được &aacute;p dụng cho nhiều ph&ograve;ng trong nh&agrave; của bạn. Bạn c&oacute; thể điểm t&ocirc; ng&ocirc;i nh&agrave; bằnng những n&eacute;t m&agrave;u cam tr&ecirc;n đồ nội thất, c&aacute;c bức tường, ghế sofa v&agrave; thảm.&nbsp;Căn ph&ograve;ng ngủ ấm c&uacute;ng được điểm t&ocirc; bởi chiếc chăn, đ&egrave;n v&agrave; tranh m&agrave;u cam.&nbsp;Thiết kế nội thất với t&ocirc;ng m&agrave;u da cam mang đến sự năng động.&nbsp;Nội thất cam-trắng l&agrave; một sự kết hợp ho&agrave;n hảo cho ng&ocirc;i nh&agrave;.&nbsp;Ph&ograve;ng ngủ cho trẻ cũng được điểm xuyết m&agrave;u cam một c&aacute;ch h&agrave;i h&ograve;a, th&uacute; vị.&nbsp;Ph&ograve;ng tắm chủ đề m&agrave;u cam tươi vui.&nbsp;Bạn c&oacute; thể chọn gạch l&aacute;t xen kẽ cam-trắng v&agrave; một tấm thảm m&agrave;u cam l&agrave;m điểm nhấn.</p>
')
INSERT [dbo].[News] ([ID_News], [ID_News_Category], [Name_News], [Image_News], [Posting_Date], [Describe_News], [Detail_News]) VALUES (N'TT004', N'LT001', N'NHỮNG CÁCH THIẾT KẾ NỘI THẤT KHIẾN NGÔI NHÀ RỘNG', N'C:\Users\HP\images\tintuc\tintuc2.jpg', CAST(N'2022-04-27' AS Date), N'Sử dụng các chi tiết gỗ màu sáng là một trong những cách thiết kế nội thất giúp căn phòng trông sáng sủa và không gian sinh hoạt trông rộng rãi hơn.', N'<p>Sử dụng c&aacute;c chi tiết gỗ m&agrave;u s&aacute;ng l&agrave; một trong những c&aacute;ch thiết kế nội thất gi&uacute;p căn ph&ograve;ng tr&ocirc;ng s&aacute;ng sủa v&agrave; kh&ocirc;ng gian sinh hoạt tr&ocirc;ng rộng r&atilde;i hơn. Sơn tường với c&aacute;c m&agrave;u dịu nhẹ cũng l&agrave; một c&aacute;ch hiệu quả gi&uacute;p căn ph&ograve;ng tươi mới v&agrave; rộng lớn hơn.&nbsp;Sự kết hợp giữa những đồ nội thất m&agrave;u tươi s&aacute;ng như trắng, đỏ, cam...l&agrave; c&aacute;ch l&agrave;m kh&ocirc;ng gian s&aacute;ng sủa.&nbsp;Những bức tranh d&aacute;n tường hoặc r&egrave;m cửa chủ để biển xanh cũng g&oacute;p phần gi&uacute;p căn ph&ograve;ng tươi mới v&agrave; rộng hơn.&nbsp;C&acirc;y xanh lu&ocirc;n l&agrave;m cho ng&ocirc;i nh&agrave; c&oacute; th&ecirc;m kh&iacute; sắc tươi tắn hơn.&nbsp;Cửa sổ bằng k&iacute;nh lớn cũng khiến ng&ocirc;i nh&agrave; tr&ocirc;ng rộng bởi hiệu ứng chiều s&acirc;u, trần nh&agrave; cao cũng tạo cảm gi&aacute;c ng&ocirc;i nh&agrave; s&aacute;ng sủa, rộng lớn.</p>
')
INSERT [dbo].[News_Category] ([ID_News_Category], [Name_News_Category], [Parent_News]) VALUES (N'LT', N'Tin Tức', N'null')
INSERT [dbo].[News_Category] ([ID_News_Category], [Name_News_Category], [Parent_News]) VALUES (N'LT001', N'<p>TIN KHUYẾN M&Atilde;I</p>
', N'LT')
INSERT [dbo].[News_Category] ([ID_News_Category], [Name_News_Category], [Parent_News]) VALUES (N'LT002', N'<p>TIN THỊ TRƯỜNG</p>
', N'LT')
INSERT [dbo].[News_Category] ([ID_News_Category], [Name_News_Category], [Parent_News]) VALUES (N'LT003', N'<p>TIN HAY</p>
', N'LT')
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'101', N'BAN', N'Bàn làm việc Soul', N'C:\Users\HP\images\sanpham\ban1.jpg', 10, N'Bàn làm việc nổi bật với phần gác chân bầng kim loại thoải mái và phù hợp với mọi thành viên trong gia đình', N'D1300-R800-C750', N'Gỗ Sồi  mdf veneer Sồi - chân kim loại sơn', 299000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'102', N'BAN', N'Bàn làm việc Layers', N'C:\Users\HP\images\sanpham\ban2.jpg', 8, N'Bàn làm việc Layer là một sản phẩm từ thương hiệu Ý Calligaris, với thiết kế đúng như tên gọi, Layer cho nhiều lớp mặt bàn giúp mở rộng không gian làm việc. Với thiết kế sang trọng và hiện đại, chiếc bàn này sẽ làm không gian làm việc cảu bạn trở nên năng động và tuyệt với hơn.', N'D1620-R720-C880mm', N'Chân kim loại - MDF Veneer', 299000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'103', N'BAN', N'Bàn làm việc Bụi', N'C:\Users\HP\images\sanpham\ban3.jpg', 10, N'Chiếc bàn với thiết kế tuyệt vời và công năng từ gỗ thông sáng màu và chân kim loại chắc chắn. Mặt bàn có các cạnh cao giúp giứ đồ không bị rơi, chính giữa là phần khớp rời có thể dễ dàng nâng cao hoặc hạ xuống hỗ trợ cho việc vẽ, để máy tính và đọc sách. Chiếc bàn năng động rà rất phù hợp cho các bạn muốn muốn tìm một không gian hoàn hảo dể sáng tác', N'D1200- R580- C720', N'Gỗ Thông   MDF Veneer Thông   Kim loại sơn tinh điện', 350000, 100000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'104', N'BAN', N'Bàn làm việc NFC030', N'C:\Users\HP\images\sanpham\ban4.jpg', 10, N'Khác với các bàn làm việc mặt gỗ bình thường, NFC cho cảm giác êm tay và bảo quản đồ dùng tốt hơn nhờ lớp bọc vải giả da cá đuối. Hộc kéo giữa bàn có thể chứa đồ dùng quan trọng, 2 bên trống dễ dàng chứa các tài liệu, tạp chí...', N'D1250-R500-C770', N'Khung gỗ sồi, mặt bọc vải sisal (vải bố), mặt hộc kéo bọc giả da cá đuối (faux shagreen)', 350000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'105', N'BAN', N'Bàn ăn Roma 6 chỗ', N'C:\Users\HP\images\sanpham\ban5.jpg', 8, N'Bàn ăn Roma với sự kết hợp của chân gỗ tần bì và bề mặt sơn trắng được xử lý khéo léo, thiết kế tinh tế là tâm điểm nổi bật cho phòng ăn hiện đại. Không gian phòng ăn sẽ hoàn hảo hơn khi kết hợp bàn ăn với ghế ăn Roma cùng BST.', N'D1900- R900 - C765 mm', N'Chân inox màu gold -cạnh bàn ốp inox màu gold -Mặt bàn Gỗ mdf veneer Oak', 150000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'106', N'BAN', N'Bàn ăn 8 chỗ Porto M2', N'C:\Users\HP\images\sanpham\ban6.jpg', 3, N'Chiếc bàn với thiết kế tuyệt vời và công năng từ gỗ thông sáng màu và chân kim loại chắc chắn. Mặt bàn có các cạnh cao giúp giứ đồ không bị rơi, chính giữa là phần khớp rời có thể dễ dàng nâng cao hoặc hạ xuống hỗ trợ cho việc vẽ, để máy tính và đọc sách. Chiếc bàn năng động rà rất phù hợp cho các bạn muốn muốn tìm một không gian hoàn hảo dể sáng tác', N'Ø 500 - C500', N'Gỗ Beech  Mặt Melamine marble', 1800000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'107', N'BAN', N'Bàn bên Pio', N'C:\Users\HP\images\sanpham\ban7.jpg', 6, N'Kiểu dáng tròn trọn vẹn, bàn bên Pio giúp cộng hưởng thêm những điểm nhấn cho không gian phòng khách. Mặt bàn sử dụng chất liệu melamine marble ấn tượng và thu hút kết hợp với gỗ beech hoàn thiện lạ mắt. Bàn bên Pio có thể đặt cạnh sofa góc hoặc sử dụng riêng với armchair cho mỗi mục đích khác nhau. PIO – Vẻ đẹp yên bình giữa lối sống đô thị Pha trộn giữa phong cách scandinavian và sự mới lạ trong chọn lựa màu sắc, bộ sưu tập PIO toát lên vẻ đẹp nhẹ nhàng, thanh lịch và cũng rất gần gũi với thiên nhiên. PIO thể hiện lối sống của những người trẻ, biết chiêm nghiệm và thưởng ngoạn sự trở về bình yên giữa nhịp sống hiện đại.Thiết kế bởi những đường cong, điểm xuyến các chi tiết nhấn nhá bên cạnh sử dụng các vật liệu như gỗ beech, melamine marble.. giúp PIO trở nên cá tính và thu hút trong không gian hiện đại. Sản phẩm được thiết kế bởi đội ngũ Nhà Xinh và sản xuất tại Việt Nam.', N'Ø 500 - C500', N'Gỗ Beech  Mặt Melamine marble', 490000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'108', N'BAN', N'Bàn bên Roma', N'C:\Users\HP\images\sanpham\ban8.jpg', 7, N'Bàn bên Roma với kiểu dáng hiện đại tinh tế, bề mặt được sơn trắng sang trọng kết hợp cùng chân gỗ tần bì tự nhiên sẽ là điểm nhấn độc đáo cho căn phòng. Sản phẩm sẽ thể hiện được tính đồng nhất hơn khi kết hợp cùng bộ sưu tập Roma.', N'D500 - R500 - C500', N'Gỗ tần bì (Ash)- MDF sơn trắng', 3500000, 100000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'109', N'BAN', N'Bàn bên Bridge P3C Black D40', N'C:\Users\HP\images\sanpham\ban9.jpg', 8, N'Bàn bên Bridge với thiết kế tối giản, những đường nét hình học, bàn bên Bridge có hai bên chân được dùng kính giảm nhiệt và mặt đá ceramic được nhấn nhá với thiết kế hình vuông.', N'D400 - R400 - C500', N'Chân kính cường lực - mặt Ceramic dán trên kính', 450000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'110', N'BAN', N'Bàn bên Atollo P2C D60', N'C:\Users\HP\images\sanpham\ban10.jpg', 3, N'Atollo là bàn bên với thiết kế nhỏ gọn, với khung kinh loại hình gậy chạy dọc, có cả phiên bản sơn bóng và mờ và có cả chất liệu gỗ hoặc mặt ceramic cho phần mặt bàn để lựa chọn, với thiết kế đối xứng giữa phần chân trụ và phần mặt bàn hình tròn.', N'Ø620.5 - C400 mm', N'Chân kim loại màu gold, mặt bàn ceramic', 199000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'111', N'BAN', N'Bàn trang điểm Mây – Mẫu 2', N'C:\Users\HP\images\sanpham\ban11.jpg', 4, N'Bàn trang điểm Mây mang thiết kế thanh lịch, duyên dáng và có chút nữ tính. Thiết kế bố trí các phần hộc kéo giúp cất trữ đầy đủ các vật dụng trang điểm tối ưu. Những nét bo tròn của gương và khung gỗ giúp tạo nét mềm mại. Đặc biệt, phần cánh thêm vừa tạo điểm nhấn vừa có thể che lại gương khi không sử dụng. Mây – Hồn Việt trong hơi thở hiện đại Bộ sưu tập Mây gợi lại những hồi ức thanh bình và gần gũi của hồn quê Việt. Đã được đội ngũ thiết kế của Nhà Xinh dày công tâm đắc. Như tên gọi của nó, bộ sưu tập lấy cảm hứng với chất liệu mây làm điểm nhấn kết hợp với các chất liệu hiện đại như da, gỗ tần bì, đá marble và đồng thau. Sự khéo léo trong việc sử dụng chất liệu và những đường nét thiết kế đã giúp cho các sản phẩm của Mây trở nên hiện đại, đầy tính thẩm mỹ và cũng giàu công năng.Tất cả sản phẩm Mây được sản xuất tại Việt Nam.', N'D1200- R400- C750/1330 mm', N'Gỗ Acacia (Tràm)- Mây tự nhiên- Chân bọc inox mạ gold', 2500000, 100000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'112', N'BAN', N'Bàn trang điểm Skagen', N'C:\Users\HP\images\sanpham\ban12.jpg', 4, N'Bàn bên Roma với kiểu dáng hiện đại tinh tế, bề mặt được sơn trắng sang trọng kết hợp cùng chân gỗ tần bì tự nhiên sẽ là điểm nhấn độc đáo cho căn phòng. Sản phẩm sẽ thể hiện được tính đồng nhất hơn khi kết hợp cùng bộ sưu tập Roma.', N'D1200 - R500 - C750/1200 mm', N'Chân gỗ mahogany , mặt mdf sơn màu trắng  noughat , gương kính thủy 5mm -', 950000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'113', N'BAN', N'Bàn nước Pio', N'C:\Users\HP\images\sanpham\ban13.jpg', 8, N'Bàn nước PIO thu hút ánh nhìn với mặt bàn bằng chất liệu hiện đại melamine marble. Thiết kế với kiểu dáng oval giúp, bàn nước Pio tạo điểm nhấn khác biệt cho không gian phòng khách của bạn. Việc bổ sung ngăn bên dưới là khu chứa đồ cũng như trưng bày các vật dụng trang trí. PIO – Vẻ đẹp yên bình giữa lối sống đô thị Pha trộn giữa phong cách scandinavian và sự mới lạ trong chọn lựa màu sắc, bộ sưu tập PIO toát lên vẻ đẹp nhẹ nhàng, thanh lịch và cũng rất gần gũi với thiên nhiên. PIO thể hiện lối sống của những người trẻ, biết chiêm nghiệm và thưởng ngoạn sự trở về bình yên giữa nhịp sống hiện đại. Thiết kế bởi những đường cong, điểm xuyến các chi tiết nhấn nhá bên cạnh sử dụng các vật liệu như gỗ beech, melamine marble.. giúp PIO trở nên cá tính và thu hút trong không gian hiện đại. Sản phẩm được thiết kế bởi đội ngũ Nhà Xinh và sản xuất tại Việt Nam.', N'D1100-R700-C400', N'Gỗ Beech   Mặt Melamine marble', 350000, 100000, 3)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'114', N'BAN', N'Bàn nước Bridge mặt Marble ', N'C:\Users\HP\images\sanpham\ban14.jpg', 4, N'Với thiết kế tối giản, những đường nét hình học, bàn nước Bridge có hai bên chân được dùng kính giảm nhiệt và mặt đá ceramic được nhấn nhá với thiết kế hình chữ nhật. Bridge là sự lựa chọn hoàn hảo cho phòng khách.', N'D1200 - R700 - C350 mm', N'Chân kính cường lực , mặt bàn Ceramic dán trên kính', 300000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'115', N'BAN', N'Bàn nước Wire Brass Large', N'C:\Users\HP\images\sanpham\ban15.jpg', 0, N'Sản phẩm là sự kết hợp tinh tế giữa phần khung kim loại nhuộm màu gold và mặt kính, kiểu dáng nhẹ nhàng và sang trọng, rất phù hợp với không gian kiểu hiện đại, để cạnh sofa làm bàn bên hay để cạnh góc nhà để bình hoa hoặc chậu cây, đặc biệt mẫu bàn này có 3 size khách có thể cho theo gu dùng làm bàn nước và bàn bên', N'D700-R700-C550', N'Thép sơn tĩnh điện, kính cường lực', 3200000, 500000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'116', N'GHE', N'Ghế ăn Kissy vải VACT6753', N'C:\Users\HP\images\sanpham\ghe1.jpg', 10, N'Khác với các bàn làm việc mặt gỗ bình thường, NFC cho cảm giác êm tay và bảo quản đồ dùng tốt hơn nhờ lớp bọc vải giả da cá đuối. Hộc kéo giữa bàn có thể chứa đồ dùng quan trọng, 2 bên trống dễ dàng chứa các tài liệu, tạp chí...', N'Gỗ D508 - R457 - C787 mm', N'Gỗ Walnut bọc vải', 420000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'117', N'GHE', N'Ghế Hudson Beige 80006K', N'C:\Users\HP\images\sanpham\ghe2.jpg', 9, N'Khác với các bàn làm việc mặt gỗ bình thường, NFC cho cảm giác êm tay và bảo quản đồ dùng tốt hơn nhờ lớp bọc vải giả da cá đuối. Hộc kéo giữa bàn có thể chứa đồ dùng quan trọng, 2 bên trống dễ dàng chứa các tài liệu, tạp chí...', N'D490 - R540 - C840 mm', N'Chân kim loại sơn 2 màu đen, gold - nệm bọc vải', 550000, 100000, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'118', N'GHE', N'Ghế ăn Harry', N'C:\Users\HP\images\sanpham\ghe3.jpg', 9, N'Chiếc ghế tuyệt đẹp này là một sản phẩm kinh điển trong tương lai. Lưng ghế bằng nhựa polycarbonate, chân kim loại mạ vàng. Thích hợp cho nhiều mục đích sử dụng, bao gồm ghế ăn, ghế trang điểm, ghế phòng họp', N'D630 - R600 - C840 mm', N'Chân kim loại, mặt ngồi khung ván ép công nghiệp bọc da công nghiệp', 1750000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'119', N'GHE', N'Ghế ăn Kayla xám', N'C:\Users\HP\images\sanpham\ghe4.jpg', 8, N'Chiếc ghế tuyệt đẹp này là một sản phẩm kinh điển trong tương lai. Lưng ghế bằng nhựa polycarbonate, chân kim loại mạ vàng. Thích hợp cho nhiều mục đích sử dụng, bao gồm ghế ăn, ghế trang điểm, ghế phòng họp', N'D590 - R590 - C890 mm', N'Chân kim loại mặt ngồi khung ván ép công nghiệp bọc vải', 990000, 100000, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'120', N'GHE', N'Ghế Saint Tropez hồng', N'C:\Users\HP\images\sanpham\ghe5.jpg', 4, N'Chiếc ghế tuyệt đẹp này là một sản phẩm kinh điển trong tương lai. Lưng ghế bằng nhựa polycarbonate, chân kim loại mạ vàng. Thích hợp cho nhiều mục đích sử dụng, bao gồm ghế ăn, ghế trang điểm, ghế phòng họp', N'D570-R500-C810', N'Chân aluminium - Lưng nhựa polycarbon white', 1790000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'121', N'TK', N'Kệ giày Caruso 5 Doors', N'C:\Users\HP\images\sanpham\tuke1.jpg', 10, N'Với thiết kế gọn gàng, sang trọng, tủ giày Chio sẽ góp phần làm cho ngôi nhà của bạn trở nên ngăn nắp và gọn gàng nhưng không thiếu phần hiện đại hơn. Tủ có 2 màu, màu gỗ và màu sơn trắng.', N'D500 - R140 - C1700 mm', N'Kim loại', 300000, 100000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'122', N'TK', N'Tủ giày Chio nâu', N'C:\Users\HP\images\sanpham\tuke2.jpg', 10, N'Với thiết kế gọn gàng, sang trọng, tủ giày Chio sẽ góp phần làm cho ngôi nhà của bạn trở nên ngăn nắp và gọn gàng nhưng không thiếu phần hiện đại hơn. Tủ có 2 màu, màu gỗ và màu sơn trắng.', N'D1200 - R370 - C830', N'Gỗ xà cừ (Mahogany)- MDF veneer', 300000, 100000, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'123', N'TK', N'Tủ ly Oblo', N'C:\Users\HP\images\sanpham\tuke3.jpg', 20, N'Bổ sung hoàn hảo cho bàn ăn Oblo tạo thành không gian phòng ăn sang trọng -đẳng cấp. Mặt cánh tủ sử dụng ceramic xuất xứ từ Ý màu trắng sạch sẽ . Chân tủ bằng sắt sơn tĩnh điện , mặt trên tủ sử dụng mdf veneer walnut tự nhiên', N'D1900-R480-C510', N'MDF - Veneer Walnut Mỹ - Ceramic shiny white Ý', 300000, 0, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'124', N'TK', N'Tủ ly Bridge Gỗ màu Tự nhiên', N'C:\Users\HP\images\sanpham\tuke4.jpg', 20, N'Tủ ly Bridge được làm bằng chất gỗ sồi đặc, cánh tủ đóng mở nhẹ nhàng nhờ thiết kế nam châm, chân tủ dễ dàng tháo lắp khi cần di chuyển, với đường nét gia công tỉ mỉ, tủ ly Bridge sẽ là điểm nổi bật cho phòng ăn nhà bạn. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi và da bò tự nhiên, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', N'D1500 - R450 - C670 mm', N'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ', 250000, 50000, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'125', N'TK', N'Kệ trưng bày cao Bụi', N'C:\Users\HP\images\sanpham\tuke5.jpg', 30, N'Tủ ly Bridge được làm bằng chất gỗ sồi đặc, cánh tủ đóng mở nhẹ nhàng nhờ thiết kế nam châm, chân tủ dễ dàng tháo lắp khi cần di chuyển, với đường nét gia công tỉ mỉ, tủ ly Bridge sẽ là điểm nổi bật cho phòng ăn nhà bạn. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi và da bò tự nhiên, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', N'D600- R400- C1800', N'MDF Veneer Thông ghép Veneer Tràm  Kim loại sơn tĩnh điện', 290000, 0, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'126', N'TB', N'Bộ 2 chân nến Black Iris 111209', N'C:\Users\HP\images\sanpham\hangtrangtri1.jpg', 0, N'Atollo là bàn bên với thiết kế nhỏ gọn, với khung kinh loại hình gậy chạy dọc, có cả phiên bản sơn bóng và mờ và có cả chất liệu gỗ hoặc mặt ceramic cho phần mặt bàn để lựa chọn, với thiết kế đối xứng giữa phần chân trụ và phần mặt bàn hình tròn.', N'D139 7 - R95 3 - C381 mm', N'Thép không gỉ', 250000, 50000, 5)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'127', N'TB', N'Bình Sacha Blanc', N'C:\Users\HP\images\sanpham\hangtrangtri2.jpg', 10, N'Atollo là bàn bên với thiết kế nhỏ gọn, với khung kinh loại hình gậy chạy dọc, có cả phiên bản sơn bóng và mờ và có cả chất liệu gỗ hoặc mặt ceramic cho phần mặt bàn để lựa chọn, với thiết kế đối xứng giữa phần chân trụ và phần mặt bàn hình tròn.', N'C250 mm', N'Thuỷ tinh', 250000, 0, 2)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'128', N'TB', N'Bình STILT tím 37CM', N'C:\Users\HP\images\sanpham\hangtrangtri3.jpg', 1, N'Với thiết kế gọn gàng, sang trọng, tủ giày Chio sẽ góp phần làm cho ngôi nhà của bạn trở nên ngăn nắp và gọn gàng nhưng không thiếu phần hiện đại hơn. Tủ có 2 màu, màu gỗ và màu sơn trắng.', N'C250 mm', N'Thuỷ tinh', 100000, 20000, 4)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Size], [Material], [Price], [Sale], [ID_Season]) VALUES (N'129', N'TB', N'Bình Nature GM', N'C:\Users\HP\images\sanpham\hangtrangtri4.jpg', 3, N'Với thiết kế gọn gàng, sang trọng, tủ giày Chio sẽ góp phần làm cho ngôi nhà của bạn trở nên ngăn nắp và gọn gàng nhưng không thiếu phần hiện đại hơn. Tủ có 2 màu, màu gỗ và màu sơn trắng.', N'R130 - C240 mm', N'Gốm sứ', 200000, 0, 4)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (101, N'AD101', CAST(N'2022-05-02 00:00:00.000' AS DateTime), 25650000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (102, N'AD101', CAST(N'2022-05-02 00:00:00.000' AS DateTime), 12800000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (103, N'AD101', CAST(N'2022-05-02 00:00:00.000' AS DateTime), 20150000)
INSERT [dbo].[Receipt] ([ID_Receipt], [ID_Account], [Created_date], [total]) VALUES (104, N'AD101', CAST(N'2022-05-02 00:00:00.000' AS DateTime), 18300000)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (209, N'104', 101, 150000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (989, N'121', 104, 100000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (1683, N'105', 101, 50000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (1697, N'109', 101, 250000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (2511, N'106', 101, 1000000, 5)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (2624, N'125', 104, 200000, 30)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (3027, N'129', 104, 100000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (4106, N'110', 101, 100000, 3)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (5524, N'127', 104, 150000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (6339, N'103', 101, 200000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (7109, N'101', 101, 150000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (7977, N'118', 103, 1200000, 9)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (8011, N'116', 103, 250000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (8018, N'102', 101, 150000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (8691, N'119', 103, 500000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (10677, N'124', 104, 100000, 20)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (11353, N'128', 104, 150000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (12788, N'120', 103, 1200000, 2)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (13303, N'126', 104, 100000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (13492, N'117', 103, 50000, 9)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (14265, N'108', 101, 1500000, 7)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (15501, N'112', 102, 650000, 4)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (16355, N'114', 102, 150000, 4)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (17773, N'122', 104, 100000, 10)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (17977, N'115', 102, 2000000, 2)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (21508, N'113', 102, 100000, 8)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (22113, N'107', 101, 250000, 5)
INSERT [dbo].[ReceiptDetail] ([ID_ReceiptDetail], [ID_Product], [ID_Receipt], [Price], [Quantity]) VALUES (22367, N'123', 104, 200000, 20)
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (1, N'Sản phẩm nổi bật tháng 1', CAST(N'2022-01-01 00:00:00.000' AS DateTime), CAST(N'2022-01-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (2, N'Sản phẩm nổi bật tháng 2', CAST(N'2022-02-01 00:00:00.000' AS DateTime), CAST(N'2022-02-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (3, N'Sản phẩm nổi bật tháng 3', CAST(N'2022-03-01 00:00:00.000' AS DateTime), CAST(N'2022-03-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (4, N'Sản phẩm nổi bật tháng 4', CAST(N'2022-04-01 00:00:00.000' AS DateTime), CAST(N'2022-04-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (5, N'Sản phẩm nổi bật tháng 5', CAST(N'2022-05-01 00:00:00.000' AS DateTime), CAST(N'2022-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (6, N'Sản phẩm nổi bật tháng 6', CAST(N'2022-06-01 00:00:00.000' AS DateTime), CAST(N'2022-06-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (7, N'Sản phẩm nổi bật tháng 7', CAST(N'2022-07-01 00:00:00.000' AS DateTime), CAST(N'2022-07-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (8, N'Sản phẩm nổi bật tháng 8', CAST(N'2022-08-01 00:00:00.000' AS DateTime), CAST(N'2022-08-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (9, N'Sản phẩm nổi bật tháng 9', CAST(N'2022-09-01 00:00:00.000' AS DateTime), CAST(N'2022-09-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (10, N'Sản phẩm nổi bật tháng 10', CAST(N'2022-10-01 00:00:00.000' AS DateTime), CAST(N'2022-10-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (11, N'Sản phẩm nổi bật tháng 11', CAST(N'2022-11-01 00:00:00.000' AS DateTime), CAST(N'2022-11-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (12, N'Sản phẩm nổi bật tháng 12', CAST(N'2022-12-01 00:00:00.000' AS DateTime), CAST(N'2022-12-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Season] ([ID_Season], [Name_Season], [DateStart], [DateEnd]) VALUES (13, N'Không', CAST(N'2000-01-02 00:00:00.000' AS DateTime), CAST(N'2000-02-11 00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[ImageDetail]  WITH CHECK ADD  CONSTRAINT [FK_ImageDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ImageDetail] CHECK CONSTRAINT [FK_ImageDetail_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([ID_Invoice])
REFERENCES [dbo].[Invoice] ([ID_Invoice])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_News_Category] FOREIGN KEY([ID_News_Category])
REFERENCES [dbo].[News_Category] ([ID_News_Category])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_News_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID_Category])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Season] FOREIGN KEY([ID_Season])
REFERENCES [dbo].[Season] ([ID_Season])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Season]
GO
ALTER TABLE [dbo].[Product_ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_Seri_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[Product_ReceiptDetail] CHECK CONSTRAINT [FK_Seri_Product]
GO
ALTER TABLE [dbo].[Product_ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_Seri_ReceiptDetail] FOREIGN KEY([ID_ReceiptDetail])
REFERENCES [dbo].[ReceiptDetail] ([ID_ReceiptDetail])
GO
ALTER TABLE [dbo].[Product_ReceiptDetail] CHECK CONSTRAINT [FK_Seri_ReceiptDetail]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Account]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Receipt] FOREIGN KEY([ID_Receipt])
REFERENCES [dbo].[Receipt] ([ID_Receipt])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
USE [master]
GO
ALTER DATABASE [khoaluan] SET  READ_WRITE 
GO
