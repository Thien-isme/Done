USE [master]
GO
/****** Object:  Database [HelmetStore]    Script Date: 3/28/2025 12:57:35 AM ******/
CREATE DATABASE [HelmetStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HelmetStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HelmetStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HelmetStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HelmetStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HelmetStore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HelmetStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HelmetStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HelmetStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HelmetStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HelmetStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HelmetStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [HelmetStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HelmetStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HelmetStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HelmetStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HelmetStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HelmetStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HelmetStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HelmetStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HelmetStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HelmetStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HelmetStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HelmetStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HelmetStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HelmetStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HelmetStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HelmetStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HelmetStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HelmetStore] SET RECOVERY FULL 
GO
ALTER DATABASE [HelmetStore] SET  MULTI_USER 
GO
ALTER DATABASE [HelmetStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HelmetStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HelmetStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HelmetStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HelmetStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HelmetStore', N'ON'
GO
ALTER DATABASE [HelmetStore] SET QUERY_STORE = OFF
GO
USE [HelmetStore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HelmetStore]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/28/2025 12:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryID] [varchar](255) NOT NULL,
	[categoryName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[madonhang] [varchar](255) NOT NULL,
	[masanpham] [varchar](255) NOT NULL,
	[size] [nvarchar](20) NOT NULL,
	[soluongsanphammua] [int] NULL,
	[giaban] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC,
	[masanpham] ASC,
	[size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danhgiasanpham]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhgiasanpham](
	[makhachhang] [varchar](30) NULL,
	[masanpham] [varchar](255) NULL,
	[madonhang] [varchar](255) NULL,
	[danhgiasao] [int] NULL,
	[chitiet] [varchar](max) NULL,
	[trangthaidanhgia] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[donhang]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[madonhang] [varchar](255) NOT NULL,
	[makhachhang] [varchar](30) NULL,
	[ngaydathang] [datetime] NULL,
	[ngaygiaohangdukien] [datetime] NULL,
	[trangthaidonhang] [nvarchar](255) NULL,
	[phuongthucthanhtoan] [varchar](255) NULL,
	[diachigiaohang] [varchar](255) NULL,
	[idmagiamgia] [varchar](255) NULL,
	[tienvanchuyen] [decimal](10, 0) NULL,
	[vat] [decimal](10, 0) NULL,
	[tongtien] [decimal](10, 2) NULL,
 CONSTRAINT [PK__donhang__74722A5FFB9864B3] PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makhachhang] [varchar](30) NOT NULL,
	[tendangnhap] [varchar](255) NULL,
	[matkhau] [varchar](255) NULL,
	[hovaten] [nvarchar](255) NULL,
	[gioitinh] [nvarchar](100) NULL,
	[ngaysinh] [date] NULL,
	[sodienthoai] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[quoctich] [nvarchar](255) NULL,
	[diachikhachhang] [nvarchar](255) NULL,
	[diachinhanhang] [nvarchar](255) NULL,
	[maxacthuc] [varchar](50) NULL,
	[thoigianhieulucmaxacthuc] [datetime] NULL,
	[trangthaixacthuc] [tinyint] NULL,
	[hinhavatar] [varchar](255) NULL,
	[isAdmin] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang_magiamgia]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang_magiamgia](
	[makhachhang] [varchar](30) NOT NULL,
	[idmagiamgia] [varchar](255) NOT NULL,
	[soluongnguoidungdangco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC,
	[idmagiamgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[magiamgia]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magiamgia](
	[idmagiamgia] [varchar](255) NOT NULL,
	[tenmagiamgia] [nvarchar](max) NULL,
	[tilegiam] [int] NOT NULL,
	[ngayhethan] [datetime] NOT NULL,
	[soluongvoucherconlai] [int] NULL,
	[theloai] [nvarchar](255) NULL,
	[hinhanhvoucher] [nvarchar](max) NULL,
 CONSTRAINT [PK__magiamgi__8150810384D5DE5A] PRIMARY KEY CLUSTERED 
(
	[idmagiamgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masanpham] [varchar](255) NOT NULL,
	[tensanpham] [nvarchar](255) NULL,
	[hinhanhsanpham] [varchar](255) NULL,
	[mausac] [nvarchar](255) NULL,
	[categoryID] [varchar](255) NOT NULL,
	[gianhap] [decimal](10, 0) NULL,
	[giaban] [decimal](10, 0) NULL,
	[giamgia] [int] NULL,
	[mota] [nvarchar](255) NULL,
 CONSTRAINT [PK__sanpham__8F121B2F54D64AF7] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham_size]    Script Date: 3/28/2025 12:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham_size](
	[masanpham] [varchar](255) NOT NULL,
	[size] [nvarchar](10) NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK__sanpham___4DEA2CC15D3CB89A] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC,
	[size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (N'1', N'Half')
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (N'2', N'Fullface')
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (N'3', N'3/4')
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1743091235997', N'THT-006', N'S', 10, CAST(2000000 AS Decimal(10, 0)))
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1743091338809', N'THT-006', N'M', 1, CAST(2000000 AS Decimal(10, 0)))
INSERT [dbo].[danhgiasanpham] ([makhachhang], [masanpham], [madonhang], [danhgiasao], [chitiet], [trangthaidanhgia]) VALUES (N'1743091201205', N'THT-006', N'1743091235997', 5, N'123', 1)
INSERT [dbo].[danhgiasanpham] ([makhachhang], [masanpham], [madonhang], [danhgiasao], [chitiet], [trangthaidanhgia]) VALUES (N'1743091327040', N'THT-006', N'1743091338809', 3, N'321', 1)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1743091235997', N'1743091201205', CAST(N'2025-03-27T23:00:35.000' AS DateTime), CAST(N'2025-04-01T23:00:35.000' AS DateTime), N'Đã giao', N'cash', N'123', NULL, CAST(30000 AS Decimal(10, 0)), CAST(2000000 AS Decimal(10, 0)), CAST(22030000.00 AS Decimal(10, 2)))
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1743091338809', N'1743091327040', CAST(N'2025-03-27T23:02:18.000' AS DateTime), CAST(N'2025-04-01T23:02:18.000' AS DateTime), N'Đã giao', N'cash', N'123', NULL, CAST(30000 AS Decimal(10, 0)), CAST(200000 AS Decimal(10, 0)), CAST(2230000.00 AS Decimal(10, 2)))
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'1743091201205', N'1', N'SuBvg9veh4YrSXGBSLXrva6jFPo=', N'bob', N'Male', NULL, N'0707333797', N'nguyenhonghieutai7a9@gmail.com', N'Vietnam', N'', N'123', N'203261', CAST(N'2025-03-27T23:15:11.000' AS DateTime), 1, N'macdinh.jpg', 1)
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'1743091327040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'1743097454956', N'2', N'q493q9bYxHNc+VU/GmtCGeRLe0Q=', NULL, NULL, NULL, NULL, N'2@gmai.com', NULL, NULL, NULL, NULL, NULL, NULL, N'macdinh.jpg', NULL)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'1743091327040', N'1', 1)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'1743097454956', N'1', 6)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'1743097454956', N'2', 6)
INSERT [dbo].[magiamgia] ([idmagiamgia], [tenmagiamgia], [tilegiam], [ngayhethan], [soluongvoucherconlai], [theloai], [hinhanhvoucher]) VALUES (N'1', N'10% discount on the total order value.', 10, CAST(N'2025-06-15T00:00:00.000' AS DateTime), 20, N'discount', N'discount.png')
INSERT [dbo].[magiamgia] ([idmagiamgia], [tenmagiamgia], [tilegiam], [ngayhethan], [soluongvoucherconlai], [theloai], [hinhanhvoucher]) VALUES (N'2', N'Free shipping.', 20, CAST(N'2025-06-15T00:00:00.000' AS DateTime), 14, N'freeship', N'freeship.png')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-001', N'Helmet', N'THT-001.png', N'White', N'2', CAST(200000 AS Decimal(10, 0)), CAST(1500000 AS Decimal(10, 0)), 0, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-002', N'Helmet', N'THT-058.jpg', N'White', N'2', NULL, CAST(1300000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-003', N'Helmet', N'THT-003.jpg', N'Black', N'1', CAST(0 AS Decimal(10, 0)), CAST(1700000 AS Decimal(10, 0)), 0, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-004', N'Helmet', N'THT-066.jpg', N'Gray', N'2', NULL, CAST(1700000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-005', N'Helmet', N'THT-005.jpg', N'Green', N'1', NULL, CAST(1677000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-006', N'Helmet', N'THT-006.jpg', N'Orange', N'1', CAST(0 AS Decimal(10, 0)), CAST(2000000 AS Decimal(10, 0)), 0, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-007', N'Helmet', N'THT-007.jpg', N'White', N'2', NULL, CAST(3000000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-009', N'Helmet', N'THT-009.jpg', N'Blue', N'2', NULL, CAST(1600000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-010', N'Helmet', N'THT-010.jpg', N'Black', N'2', NULL, CAST(2500000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-011', N'Helmet', N'THT-011.jpg', N'Purple', N'2', NULL, CAST(1800000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-012', N'Helmet', N'THT-012.jpg', N'Black', N'2', NULL, CAST(1251000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-016', N'Helmet', N'THT-016.jpeg', N'Black', N'2', NULL, CAST(772000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-017', N'Helmet', N'THT-017.jpg', N'Blue', N'2', NULL, CAST(1419000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-018', N'Helmet', N'THT-018.jpg', N'Yellow', N'2', NULL, CAST(1763000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-019', N'Helmet', N'THT-019.jpg', N'Black', N'2', NULL, CAST(1928000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-020', N'Helmet', N'THT-020.jpg', N'White', N'3', NULL, CAST(800000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-021', N'Helmet', N'THT-021.png', N'Black', N'1', NULL, CAST(150000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-022', N'Helmet', N'THT-022.png', N'Red', N'1', NULL, CAST(200000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-023', N'Helmet', N'THT-023.png', N'Pink', N'1', NULL, CAST(500000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-024', N'Helmet', N'THT-024.png', N'Black', N'1', NULL, CAST(600000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-025', N'Helmet', N'THT-025.png', N'Pink', N'1', NULL, CAST(350000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-026', N'Helmet', N'THT-026.png', N'Gray', N'1', NULL, CAST(170000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-027', N'Helmet', N'THT-027.png', N'Purple', N'1', NULL, CAST(120000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-029', N'Helmet', N'THT-029.png', N'White', N'1', NULL, CAST(390000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-030', N'Helmet', N'THT-030.png', N'Yellow', N'1', NULL, CAST(280000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-031', N'Helmet', N'THT-031.png', N'Gray', N'1', NULL, CAST(330000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-032', N'Helmet', N'THT-032.jpg', N'Red', N'3', NULL, CAST(700000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-033', N'Helmet', N'THT-033.png', N'Purple', N'1', NULL, CAST(120000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-034', N'Helmet', N'THT-034.png', N'Green', N'1', NULL, CAST(170000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-035', N'Helmet', N'THT-035.png', N'Gray', N'1', NULL, CAST(100000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-036', N'Helmet', N'THT-036.png', N'White', N'1', NULL, CAST(250000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-037', N'Helmet', N'THT-037.png', N'Black', N'1', NULL, CAST(280000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-038', N'Helmet', N'THT-038.png', N'White', N'1', NULL, CAST(170000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-039', N'Helmet', N'THT-039.png', N'Orange', N'1', NULL, CAST(110000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-040', N'Helmet', N'THT-040.png', N'White', N'1', NULL, CAST(160000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-041', N'Helmet', N'THT-041.png', N'Black', N'1', NULL, CAST(190000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-042', N'Helmet', N'THT-042.png', N'Blue', N'1', NULL, CAST(167000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-043', N'Helmet', N'THT-043.png', N'Black', N'1', NULL, CAST(1821000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-044', N'Helmet', N'THT-044.jpg', N'Black', N'2', NULL, CAST(1935000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-045', N'Helmet', N'THT-045.png', N'Brown', N'3', NULL, CAST(2506000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-046', N'Helmet', N'THT-046.jpg', N'Blue', N'3', NULL, CAST(526000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-047', N'Helmet', N'THT-047.jpg', N'Blue', N'2', NULL, CAST(2088000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-048', N'Helmet', N'THT-048.png', N'Red', N'1', NULL, CAST(346000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-049', N'Helmet', N'THT-049.png', N'Blue', N'3', NULL, CAST(1190000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-050', N'Helmet', N'THT-050.png', N'Yellow', N'3', NULL, CAST(2748000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-051', N'Helmet', N'THT-051.png', N'Black', N'3', NULL, CAST(2080000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-052', N'Helmet', N'THT-052.jpg', N'Gray', N'2', NULL, CAST(866000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-053', N'Helmet', N'THT-053.png', N'Black', N'2', NULL, CAST(927000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-054', N'Helmet', N'THT-054.png', N'Black', N'3', NULL, CAST(1902000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-055', N'Helmet', N'THT-055.png', N'White', N'3', NULL, CAST(2992000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-056', N'Helmet', N'THT-056.jpg', N'White', N'2', NULL, CAST(2649000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-057', N'Helmet', N'THT-057.jpg', N'Black', N'2', NULL, CAST(2475000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-058', N'Helmet', N'THT-058.jpg', N'White', N'2', NULL, CAST(1100000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-059', N'Helmet', N'THT-059.jpg', N'Black', N'2', NULL, CAST(1300000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-060', N'Helmet', N'THT-060.jpg', N'White', N'2', NULL, CAST(1700000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-061', N'Helmet', N'THT-061.jpg', N'Yellow', N'2', NULL, CAST(1800000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-062', N'Helmet', N'THT-062.jpg', N'Black', N'2', NULL, CAST(1300000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-063', N'Helmet', N'THT-063.jpg', N'Green', N'2', NULL, CAST(1500000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-064', N'Helmet', N'THT-064.jpg', N'Blue', N'2', NULL, CAST(1600000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-065', N'Helmet', N'THT-065.jpg', N'Blue', N'2', NULL, CAST(1400000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-066', N'Helmet', N'THT-066.jpg', N'Gray', N'2', NULL, CAST(1300000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-067', N'Helmet', N'THT-067.jpg', N'Orange', N'2', NULL, CAST(1200000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-068', N'Helmet', N'THT-068.jpg', N'Black', N'3', NULL, CAST(1800000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-069', N'Helmet', N'THT-069.jpg', N'Blue', N'3', NULL, CAST(1700000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-070', N'Helmet', N'THT-070.jpg', N'Red', N'3', NULL, CAST(1300000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-071', N'Helmet', N'THT-071.png', N'Gray', N'3', NULL, CAST(1400000 AS Decimal(10, 0)), NULL, N'High-quality helmet, safe and stylish.')
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-001', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-001', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-001', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-003', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'S', 10)
GO
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'S', 10)
ALTER TABLE [dbo].[danhgiasanpham] ADD  CONSTRAINT [DF_danhgiasanpham_trangthaidanhgia]  DEFAULT ((0)) FOR [trangthaidanhgia]
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([madonhang])
REFERENCES [dbo].[donhang] ([madonhang])
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
GO
ALTER TABLE [dbo].[danhgiasanpham]  WITH CHECK ADD  CONSTRAINT [FK__danhgiasa__makha__5629CD9C] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[khachhang] ([makhachhang])
GO
ALTER TABLE [dbo].[danhgiasanpham] CHECK CONSTRAINT [FK__danhgiasa__makha__5629CD9C]
GO
ALTER TABLE [dbo].[danhgiasanpham]  WITH CHECK ADD  CONSTRAINT [FK__danhgiasa__masan__571DF1D5] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
GO
ALTER TABLE [dbo].[danhgiasanpham] CHECK CONSTRAINT [FK__danhgiasa__masan__571DF1D5]
GO
ALTER TABLE [dbo].[danhgiasanpham]  WITH CHECK ADD  CONSTRAINT [fk_danhgiasanpham_donhang] FOREIGN KEY([madonhang])
REFERENCES [dbo].[donhang] ([madonhang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[danhgiasanpham] CHECK CONSTRAINT [fk_danhgiasanpham_donhang]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [fk_donhang_khachhang] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[khachhang] ([makhachhang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [fk_donhang_khachhang]
GO
ALTER TABLE [dbo].[khachhang_magiamgia]  WITH CHECK ADD  CONSTRAINT [FK__khachhang__idmag__4316F928] FOREIGN KEY([idmagiamgia])
REFERENCES [dbo].[magiamgia] ([idmagiamgia])
GO
ALTER TABLE [dbo].[khachhang_magiamgia] CHECK CONSTRAINT [FK__khachhang__idmag__4316F928]
GO
ALTER TABLE [dbo].[khachhang_magiamgia]  WITH CHECK ADD FOREIGN KEY([makhachhang])
REFERENCES [dbo].[khachhang] ([makhachhang])
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_kieumau] FOREIGN KEY([categoryID])
REFERENCES [dbo].[categories] ([categoryID])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_kieumau]
GO
ALTER TABLE [dbo].[sanpham_size]  WITH CHECK ADD  CONSTRAINT [FK__sanpham_s__masan__3D5E1FD2] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
GO
ALTER TABLE [dbo].[sanpham_size] CHECK CONSTRAINT [FK__sanpham_s__masan__3D5E1FD2]
GO
USE [master]
GO
ALTER DATABASE [HelmetStore] SET  READ_WRITE 
GO
