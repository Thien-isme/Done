USE [master]
GO
/****** Object:  Database [HelmetStore]    Script Date: 3/12/2025 3:43:07 AM ******/
CREATE DATABASE [HelmetStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HelmetSoreee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HelmetSoreee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HelmetSoreee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\HelmetSoreee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[categories]    Script Date: 3/12/2025 3:43:08 AM ******/
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
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 3/12/2025 3:43:08 AM ******/
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
/****** Object:  Table [dbo].[donhang]    Script Date: 3/12/2025 3:43:08 AM ******/
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
/****** Object:  Table [dbo].[khachhang]    Script Date: 3/12/2025 3:43:08 AM ******/
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
	[dangkynhanbangtin] [tinyint] NULL,
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
/****** Object:  Table [dbo].[khachhang_magiamgia]    Script Date: 3/12/2025 3:43:08 AM ******/
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
/****** Object:  Table [dbo].[magiamgia]    Script Date: 3/12/2025 3:43:08 AM ******/
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
/****** Object:  Table [dbo].[sanpham]    Script Date: 3/12/2025 3:43:08 AM ******/
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
	[mota] [nvarchar](max) NULL,
 CONSTRAINT [PK__sanpham__8F121B2F54D64AF7] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham_size]    Script Date: 3/12/2025 3:43:08 AM ******/
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
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1741633038679', N'THT-001', N'S', 1, CAST(1348000 AS Decimal(10, 0)))
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1741676128775', N'THT-001', N'S', 1, CAST(1348000 AS Decimal(10, 0)))
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1741678819396', N'THT-001', N'S', 1, CAST(1348000 AS Decimal(10, 0)))
INSERT [dbo].[chitietdonhang] ([madonhang], [masanpham], [size], [soluongsanphammua], [giaban]) VALUES (N'1741679675975', N'THT-001', N'S', 1, CAST(1348000 AS Decimal(10, 0)))
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1741633038679', N'1', CAST(N'2025-03-11T01:57:18.000' AS DateTime), CAST(N'2025-03-16T01:57:18.000' AS DateTime), N'Đã giao', N'cash', N'222', NULL, CAST(30000 AS Decimal(10, 0)), CAST(134800 AS Decimal(10, 0)), CAST(1512800.00 AS Decimal(10, 2)))
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1741676128775', N'1', CAST(N'2025-03-11T13:55:28.000' AS DateTime), CAST(N'2025-03-16T13:55:28.000' AS DateTime), N'Mới tạo', N'cash', N'222', N'1', CAST(30000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(1243200.00 AS Decimal(10, 2)))
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1741678819396', N'1', CAST(N'2025-03-11T14:40:19.000' AS DateTime), CAST(N'2025-03-16T14:40:19.000' AS DateTime), N'Mới tạo', N'cash', N'222', N'1', CAST(30000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(1243200.00 AS Decimal(10, 2)))
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaydathang], [ngaygiaohangdukien], [trangthaidonhang], [phuongthucthanhtoan], [diachigiaohang], [idmagiamgia], [tienvanchuyen], [vat], [tongtien]) VALUES (N'1741679675975', N'1', CAST(N'2025-03-11T14:54:35.000' AS DateTime), CAST(N'2025-03-16T14:54:35.000' AS DateTime), N'Mới tạo', N'cash', N'222', N'2', CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(1348000.00 AS Decimal(10, 2)))
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [dangkynhanbangtin], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'1', N'1', N'1', N'tsds22223df2', N'male', CAST(N'2025-02-13' AS Date), N'2222f', N'thienisme2004@gmail.com2', N'Việt Nam', N'2222dfdfff', N'222', 0, N'038688', CAST(N'2025-03-11T02:51:39.000' AS DateTime), 1, N'1.jpg', 0)
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [dangkynhanbangtin], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'1740889758934', N'tai', N'123', N'Nguyen Hong Hieu Tai', N'male', CAST(N'2004-05-19' AS Date), N'0707333797', N'nguyenhonghieutai7a9@gmail.com', N'Viet Nam', N'Ho Chi Minh', N'Thanh Pho Cao Lanh, Tinh Dong Thap', 0, NULL, NULL, NULL, N'tai.jpg', 1)
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [dangkynhanbangtin], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([makhachhang], [tendangnhap], [matkhau], [hovaten], [gioitinh], [ngaysinh], [sodienthoai], [email], [quoctich], [diachikhachhang], [diachinhanhang], [dangkynhanbangtin], [maxacthuc], [thoigianhieulucmaxacthuc], [trangthaixacthuc], [hinhavatar], [isAdmin]) VALUES (N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'1', N'1', 8)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'1', N'2', 6)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'2', N'1', 3)
INSERT [dbo].[khachhang_magiamgia] ([makhachhang], [idmagiamgia], [soluongnguoidungdangco]) VALUES (N'2', N'2', 2)
INSERT [dbo].[magiamgia] ([idmagiamgia], [tenmagiamgia], [tilegiam], [ngayhethan], [soluongvoucherconlai], [theloai], [hinhanhvoucher]) VALUES (N'1', N'Giam gia 11', 10, CAST(N'2025-06-15T00:00:00.000' AS DateTime), 8, N'discound', N'discount.png')
INSERT [dbo].[magiamgia] ([idmagiamgia], [tenmagiamgia], [tilegiam], [ngayhethan], [soluongvoucherconlai], [theloai], [hinhanhvoucher]) VALUES (N'2', N'Giam gia 22', 20, CAST(N'2025-06-15T00:00:00.000' AS DateTime), 4, N'freeship', N'freeship.png')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-001', N'Nón Bảo Hiểm', N'THT-001.png', N'Green', N'2', CAST(200000 AS Decimal(10, 0)), CAST(1348000 AS Decimal(10, 0)), 0, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-003', N'Nón Bảo Hiểm', N'THT-003.jpg', N'Yellow', N'1', NULL, CAST(1700000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-005', N'Nón Bảo Hiểm', N'THT-005.jpg', N'White', N'1', NULL, CAST(1677000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-006', N'Nón Bảo Hiểm', N'THT-006.jpg', N'Green', N'1', NULL, CAST(392000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-007', N'Nón Bảo Hiểm', N'THT-007.jpg', N'Gray', N'1', NULL, CAST(2633000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-009', N'Nón Bảo Hiểm', N'THT-009.jpg', N'Green', N'1', NULL, CAST(311000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-010', N'Nón Bảo Hiểm', N'THT-010.jpg', N'Blue', N'1', NULL, CAST(2926000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-011', N'Nón Bảo Hiểm', N'THT-011.jpg', N'Green', N'1', NULL, CAST(1800000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-012', N'Nón Bảo Hiểm', N'THT-012.jpg', N'Orange', N'1', NULL, CAST(1251000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-016', N'Nón Bảo Hiểm', N'THT-016.jpeg', N'Yellow', N'1', NULL, CAST(772000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-017', N'Nón Bảo Hiểm', N'THT-017.jpg', N'Yellow', N'1', NULL, CAST(1419000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-018', N'Nón Bảo Hiểm', N'THT-018.jpg', N'Blue', N'1', NULL, CAST(1763000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-019', N'Nón Bảo Hiểm', N'THT-019.jpg', N'Gray', N'1', NULL, CAST(1928000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-020', N'Nón Bảo Hiểm', N'THT-020.jpg', N'White', N'1', NULL, CAST(949000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-021', N'Nón Bảo Hiểm', N'THT-021.png', N'Purple', N'1', NULL, CAST(2418000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-022', N'Nón Bảo Hiểm', N'THT-022.png', N'Gray', N'1', NULL, CAST(828000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-023', N'Nón Bảo Hiểm', N'THT-023.png', N'Blue', N'1', NULL, CAST(1132000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-024', N'Nón Bảo Hiểm', N'THT-024.png', N'Green', N'1', NULL, CAST(2961000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-025', N'Nón Bảo Hiểm', N'THT-025.png', N'Gray', N'1', NULL, CAST(1903000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-026', N'Nón Bảo Hiểm', N'THT-026.png', N'Yellow', N'1', NULL, CAST(2572000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-027', N'Nón Bảo Hiểm', N'THT-027.png', N'Blue', N'1', NULL, CAST(1378000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-029', N'Nón Bảo Hiểm', N'THT-029.png', N'Blue', N'1', NULL, CAST(386000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-030', N'Nón Bảo Hiểm', N'THT-030.png', N'White', N'1', NULL, CAST(1900000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-031', N'Nón Bảo Hiểm', N'THT-031.png', N'Blue', N'1', NULL, CAST(161000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-032', N'Nón Bảo Hiểm', N'THT-032.jpg', N'Gray', N'1', NULL, CAST(1558000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-033', N'Nón Bảo Hiểm', N'THT-033.png', N'White', N'1', NULL, CAST(205000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-034', N'Nón Bảo Hiểm', N'THT-034.png', N'Yellow', N'1', NULL, CAST(1381000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-035', N'Nón Bảo Hiểm', N'THT-035.png', N'Yellow', N'1', NULL, CAST(1614000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-036', N'Nón Bảo Hiểm', N'THT-036.png', N'Orange', N'1', NULL, CAST(2366000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-037', N'Nón Bảo Hiểm', N'THT-037.png', N'Blue', N'1', NULL, CAST(2897000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-038', N'Nón Bảo Hiểm', N'THT-038.png', N'Yellow', N'1', NULL, CAST(2218000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-039', N'Nón Bảo Hiểm', N'THT-039.png', N'Blue', N'1', NULL, CAST(757000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-040', N'Nón Bảo Hiểm', N'THT-040.png', N'White', N'1', NULL, CAST(1661000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-041', N'Nón Bảo Hiểm', N'THT-041.png', N'White', N'1', NULL, CAST(2288000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-042', N'Nón Bảo Hiểm', N'THT-042.png', N'Purple', N'1', NULL, CAST(167000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-043', N'Nón Bảo Hiểm', N'THT-043.png', N'Gray', N'1', NULL, CAST(1821000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-044', N'Nón Bảo Hiểm', N'THT-044.jpg', N'Purple', N'1', NULL, CAST(1935000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-045', N'Nón Bảo Hiểm', N'THT-045.png', N'Red', N'1', NULL, CAST(2506000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-046', N'Nón Bảo Hiểm', N'THT-046.jpg', N'Blue', N'1', NULL, CAST(526000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-047', N'Nón Bảo Hiểm', N'THT-047.jpg', N'Gray', N'1', NULL, CAST(2088000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-048', N'Nón Bảo Hiểm', N'THT-048.png', N'Black', N'1', NULL, CAST(346000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-049', N'Nón Bảo Hiểm', N'THT-049.png', N'Gray', N'1', NULL, CAST(1190000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-050', N'Nón Bảo Hiểm', N'THT-050.png', N'Black', N'1', NULL, CAST(2748000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-051', N'Nón Bảo Hiểm', N'THT-051.png', N'Gray', N'1', NULL, CAST(2080000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-052', N'Nón Bảo Hiểm', N'THT-052.jpg', N'Blue', N'1', NULL, CAST(866000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-053', N'Nón Bảo Hiểm', N'THT-053.png', N'Pink', N'1', NULL, CAST(927000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-054', N'Nón Bảo Hiểm', N'THT-054.png', N'Purple', N'1', NULL, CAST(1902000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-055', N'Nón Bảo Hiểm', N'THT-055.png', N'Red', N'1', NULL, CAST(2992000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-056', N'Nón Bảo Hiểm', N'THT-056.jpg', N'Pink', N'1', NULL, CAST(2649000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-057', N'Nón Bảo Hiểm', N'THT-057.jpg', N'Gray', N'1', NULL, CAST(2475000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-058', N'Nón Bảo Hiểm', N'THT-058.jpg', N'Black', N'1', NULL, CAST(1170000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-059', N'Nón Bảo Hiểm', N'THT-059.jpg', N'Gray', N'1', NULL, CAST(1710000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-060', N'Nón Bảo Hiểm', N'THT-060.jpg', N'Black', N'1', NULL, CAST(1628000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-061', N'Nón Bảo Hiểm', N'THT-061.jpg', N'Gray', N'1', NULL, CAST(2949000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-062', N'Nón Bảo Hiểm', N'THT-062.jpg', N'Red', N'1', NULL, CAST(975000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-063', N'Nón Bảo Hiểm', N'THT-063.jpg', N'Yellow', N'1', NULL, CAST(336000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-064', N'Nón Bảo Hiểm', N'THT-064.jpg', N'Pink', N'1', NULL, CAST(264000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-065', N'Nón Bảo Hiểm', N'THT-065.jpg', N'Blue', N'1', NULL, CAST(179000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-066', N'Nón Bảo Hiểm', N'THT-066.jpg', N'Yellow', N'1', NULL, CAST(651000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-067', N'Nón Bảo Hiểm', N'THT-067.jpg', N'Green', N'1', NULL, CAST(1898000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-068', N'Nón Bảo Hiểm', N'THT-068.jpg', N'Blue', N'1', NULL, CAST(202000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-069', N'Nón Bảo Hiểm', N'THT-069.jpg', N'Black', N'1', NULL, CAST(858000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-070', N'Nón Bảo Hiểm', N'THT-070.jpg', N'White', N'1', NULL, CAST(2172000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanhsanpham], [mausac], [categoryID], [gianhap], [giaban], [giamgia], [mota]) VALUES (N'THT-071', N'Nón Bảo Hiểm', N'THT-071.png', N'Orange', N'1', NULL, CAST(2122000 AS Decimal(10, 0)), NULL, N'Mũ bảo hiểm chất lượng cao, an toàn và thời trang')
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-003', N'S', 0)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'L', 0)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'M', 0)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-005', N'S', 0)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-006', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'M', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-007', N'S', -2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'L', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-009', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'L', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-010', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-011', N'S', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-012', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-016', N'S', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-017', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-018', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'M', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-019', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-020', N'S', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'L', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-021', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-022', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'L', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-023', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'M', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-024', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-025', N'S', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-026', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-027', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-029', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'L', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'M', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-030', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'M', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-031', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-032', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-033', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-034', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'M', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-035', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-036', N'S', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-037', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-038', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-039', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'L', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-040', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-041', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'M', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-042', N'S', 8)
GO
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'L', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-043', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-044', N'S', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'L', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-045', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-046', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-047', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'L', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-048', N'S', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-049', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-050', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'L', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'M', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-051', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-052', N'S', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'L', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-053', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-054', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'M', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-055', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-056', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'L', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-057', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'M', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-058', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'L', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-059', N'S', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'M', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-060', N'S', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'L', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-061', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'L', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-062', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'L', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-063', N'S', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'L', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'M', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-064', N'S', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'M', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-065', N'S', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'L', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'M', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-066', N'S', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'L', 6)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'M', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-067', N'S', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'L', 4)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'M', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-068', N'S', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'L', 5)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'M', 2)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-069', N'S', 10)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'L', 7)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'M', 9)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-070', N'S', 3)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'L', 8)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'M', 1)
INSERT [dbo].[sanpham_size] ([masanpham], [size], [soluong]) VALUES (N'THT-071', N'S', 4)
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([madonhang])
REFERENCES [dbo].[donhang] ([madonhang])
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
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
