CREATE DATABASE [QLShopHoaTuoi]
GO

ALTER DATABASE [QLShopHoaTuoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLShopHoaTuoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLShopHoaTuoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLShopHoaTuoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLShopHoaTuoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLShopHoaTuoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLShopHoaTuoi] SET  MULTI_USER 
GO
ALTER DATABASE [QLShopHoaTuoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLShopHoaTuoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLShopHoaTuoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLShopHoaTuoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLShopHoaTuoi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLShopHoaTuoi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLShopHoaTuoi] SET QUERY_STORE = OFF
GO
USE [QLShopHoaTuoi]
GO
/****** Object:  Table [dbo].[ChiTietNH]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNH] [int] NULL,
	[MaHH] [nchar](10) NULL,
	[TenHH] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](30) NULL,
	[DonGia] [float] NULL,
	[SL] [int] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoHD] [int] NULL,
	[MaHH] [nchar](10) NULL,
	[TenHH] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[SL] [int] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [nchar](10) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](30) NULL,
	[GiaBan] [float] NULL,
	[SL] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Gioi] [nchar](10) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[NamSinh] [nchar](10) NULL,
	[SDT] [nchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[MaNH] [int] NOT NULL,
	[NgayNH] [date] NULL,
	[ChiPhi] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayTK] [date] NULL,
	[Thu] [float] NULL,
	[Chi] [float] NULL,
	[DoanhThu] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSystem]    Script Date: 12/5/2020 1:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSystem](
	[ID] [nchar](10) NOT NULL,
	[Account] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserSystem] ([ID], [Account], [Password]) VALUES (N'1         ', N'admin', N'admin')
INSERT [dbo].[UserSystem] ([ID], [Account], [Password]) VALUES (N'2         ', N'nvkho', N'nvkho')
INSERT [dbo].[UserSystem] ([ID], [Account], [Password]) VALUES (N'3         ', N'nvbanhang', N'nvbanhang')
GO
ALTER TABLE [dbo].[ChiTietNH]  WITH CHECK ADD FOREIGN KEY([MaNH])
REFERENCES [dbo].[NhapHang] ([MaNH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
USE [master]
GO
ALTER DATABASE [QLShopHoaTuoi] SET  READ_WRITE 
GO
