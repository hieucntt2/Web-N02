--create database [QLCuaHangThucPham]

USE [QLCuaHangThucPham]
GO
/****** Object:  Table [dbo].[AnhSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSP](
	[MaAnh] int identity NOT NULL,
	[MaSP] int NOT NULL,
	[TenAnh] [nvarchar](50) NULL,
	[URL] [nvarchar](50) NULL,
 CONSTRAINT [PK_AnhSP] PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDH]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaDH] int NOT NULL,
	[MaSP] int NOT NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] int identity NOT NULL,
	[Time_Create] [datetime] NULL,
	[Money] [money] NULL,
	[MaKH] int NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSP](
	[MaGia] int identity NOT NULL,
	[MaSP] int  NULL,
	[Gia] [money] NULL,
	[Time_Begin] [datetime] NULL,
	[Time_End] [datetime] NULL,
 CONSTRAINT [PK_GiaSP] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] int identity NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Tuoi] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Admin] [tinyint] NULL,
	[DiaChi] [nvarchar](max) null
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] int identity NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PTTT]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTTT](
	[MaPTTT] int identity NOT NULL,
	[TenPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_PTTT] PRIMARY KEY CLUSTERED 
(
	[MaPTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] int identity NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GTSP] [nvarchar](50) NULL,
	[MaLoai] int NULL,
	[SL] [int] NULL,
	[Time_Create] [datetime] NULL,
	[Time_Update] [datetime] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[isDelete] [tinyint] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/10/2022 12:03:12 AM ******/

/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT]int identity NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[ND] [nvarchar](max) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTDH]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTDH](
	[MaDH]int  NOT NULL,
	[MaPTTT] int NOT NULL,
	[Tong] [money] NULL,
	[GhiChu] [nvarchar](100) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AnhSP]  WITH CHECK ADD  CONSTRAINT [FK_AnhSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[AnhSP] CHECK CONSTRAINT [FK_AnhSP_SanPham]
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_DonHang]
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[GiaSP]  WITH CHECK ADD  CONSTRAINT [FK_GiaSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GiaSP] CHECK CONSTRAINT [FK_GiaSP_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO

ALTER TABLE [dbo].[TTDH]  WITH CHECK ADD  CONSTRAINT [FK_TTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[TTDH] CHECK CONSTRAINT [FK_TTDH_DonHang]
GO
ALTER TABLE [dbo].[TTDH]  WITH CHECK ADD  CONSTRAINT [FK_TTDH_PTTT] FOREIGN KEY([MaPTTT])
REFERENCES [dbo].[PTTT] ([MaPTTT])
GO
ALTER TABLE [dbo].[TTDH] CHECK CONSTRAINT [FK_TTDH_PTTT]
GO



INSERT [dbo].[LoaiSP] ( [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Rau Củ', CAST(N'2022-03-26T15:34:43.323' AS DateTime), CAST(N'2022-03-26T15:34:43.323' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ( [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Trái Cây', CAST(N'2022-03-26T15:35:00.800' AS DateTime), CAST(N'2022-03-26T15:35:00.800' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ( [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Đồ Uống', CAST(N'2022-03-26T15:35:35.597' AS DateTime), CAST(N'2022-03-26T15:35:35.597' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ( [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Đồ Khô', CAST(N'2022-03-26T15:36:02.323' AS DateTime), CAST(N'2022-03-26T15:36:02.323' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Cà Chua', NULL, 2, 1000, CAST(N'2022-03-26T15:37:20.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Nho Xanh', NULL, 2, 200, CAST(N'2022-03-27T01:53:11.037' AS DateTime), CAST(N'2022-03-27T01:53:11.037' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Ớt', NULL, 1, 200, CAST(N'2022-03-27T01:53:40.697' AS DateTime), CAST(N'2022-03-27T01:53:40.697' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Quả óc chó', NULL,4, 200, CAST(N'2022-03-27T01:54:16.837' AS DateTime), CAST(N'2022-03-27T01:54:16.837' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Súp Lơ', NULL, 1, 200, CAST(N'2022-03-27T01:55:02.750' AS DateTime), CAST(N'2022-03-27T01:55:02.750' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Táo Xanh', NULL, 2, 200, CAST(N'2022-03-27T01:55:44.530' AS DateTime), CAST(N'2022-03-27T01:55:44.530' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Thơm(Dứa)', NULL, 2, 200, CAST(N'2022-03-27T01:56:27.247' AS DateTime), CAST(N'2022-03-27T01:56:27.247' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Cam', NULL, 2, 200, CAST(N'2022-03-26T15:37:52.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Chanh', NULL, 2, 200, CAST(N'2022-03-27T01:38:55.453' AS DateTime), CAST(N'2022-03-27T01:38:55.453' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Chanh Dây', NULL, 2, 200, CAST(N'2022-03-27T01:48:34.150' AS DateTime), CAST(N'2022-03-27T01:48:34.150' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Chuối', NULL, 2, 200, CAST(N'2022-03-27T01:49:09.413' AS DateTime), CAST(N'2022-03-27T01:49:09.413' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Đào', NULL, 2, 200, CAST(N'2022-03-27T01:50:17.400' AS DateTime), CAST(N'2022-03-27T01:50:17.400' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Dưa Leo', NULL, 2, 200, CAST(N'2022-03-27T01:50:59.357' AS DateTime), CAST(N'2022-03-27T01:50:59.357' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Dừa Sáp', NULL, 2, 200, CAST(N'2022-03-27T01:51:34.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ( [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES ( N'Lựu', NULL, 1, 200, CAST(N'2022-03-27T01:52:40.990' AS DateTime), CAST(N'2022-03-27T01:52:40.990' AS DateTime), NULL, 0, 0)
GO
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (1, 320000.0000, CAST(N'2022-03-29T11:05:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (10, 320000.0000, CAST(N'2022-03-18T11:17:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (11, 450000.0000, CAST(N'2022-03-22T11:18:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (12, 120000.0000, CAST(N'2022-03-17T11:18:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (13, 350000.0000, CAST(N'2022-03-15T11:19:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (14, 220000.0000, CAST(N'2022-03-14T11:19:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (15, 150000.0000, CAST(N'2022-03-24T11:20:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (2, 250000.0000, CAST(N'2022-03-30T11:06:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (3, 210000.0000, CAST(N'2022-03-23T11:06:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (4, 190000.0000, CAST(N'2022-03-14T11:07:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (5, 150000.0000, CAST(N'2022-03-15T11:12:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (6, 330000.0000, CAST(N'2022-03-14T11:13:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (7, 50000.0000, CAST(N'2022-03-14T11:14:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (8, 350000.0000, CAST(N'2022-03-18T11:14:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ( [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (9, 170000.0000, CAST(N'2022-03-22T11:14:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [GioiTinh], [Tuoi], [Email], [SDT], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'1', N'3123', N'1', 32, N'321', N'1321', CAST(N'2022-03-21T13:47:50.037' AS DateTime), CAST(N'2022-03-21T13:47:50.037' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Cà Chua', N'product-22-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (11, N'Ớt', N'product-21-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (11, N'Ớt', N'product-21-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (11, N'Ớt', N'product-21-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (12, N'quả Óc Chó', N'product-6-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (12, N'Quả Óc Chó', N'product-6-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (12, N'Quả Óc Chó', N'product-6-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (12, N'Quả Óc Chó', N'product-6-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (13, N'Súp Lơ', N'product-4-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (13, N'Súp Lơ', N'product-4-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (13, N'Súp Lơ', N'product-4-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Cà Chua 2', N'product-22-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (13, N'Súp Lơ', N'product-4-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (14, N'Táo Xanh', N'product-1-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (14, N'Táo Xanh', N'product-1-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (14, N'Táo Xanh', N'product-1-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (14, N'Táo Xanh', N'product-1-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (15, N'Dứa', N'product-23-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (15, N'Dứa', N'product-23-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (15, N'Dứa', N'product-23-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (15, N'Dứa', N'product-23-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (2, N'Cam', N'product-5.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Cà Chua', N'product-22-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (2, N'Cam', N'product-5-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (2, N'Cam', N'product-5-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (2, N'Cam', N'product-5-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (3, N'Chanh', N'product-7-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (3, N'Chanh', N'product-7-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (3, N'Chanh', N'product-7-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (3, N'Chanh', N'product-7-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (4, N'Chanh Dây', N'product-15-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (4, N'Chanh Dây', N'product-15-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (4, N'Chanh Dây', N'product-15-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Cà Chua', N'product-22-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (4, N'Chanh Dây', N'product-15-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (5, N'Chuối', N'product-12-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Chuối', N'product-12-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Chuối', N'product-12-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (5, N'Chuối', N'product-12-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (6, N'Đào', N'product-24-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (6, N'Đào', N'product-24-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Đào', N'product-24-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (6, N'Đào', N'product-24-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (7, N'Dưa Leo', N'product-16-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (10, N'Nho Xanh', N'product-9-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (7, N'Dưa Leo', N'product-16-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (1, N'Dưa Leo', N'product-16-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (7, N'Dưa Leo', N'product-16-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (8, N'Dừa', N'product-11-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (8, N'Dừa', N'product-11-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (8, NULL, N'product-11-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (8, N'Dừa', N'product-11-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (9, N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (9, N'Lựu', N'product-25-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (9, N'Lựu', N'product-25-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (10, N'Nho Xanh', N'product-9-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (9, N'Lựu', N'product-25-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (10, N'Nho Xanh', N'product-9-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (10, N'Nho Xanh', N'product-9-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ( [MaSP], [TenAnh], [URL]) VALUES (11, N'Ớt', N'product-21-470x470-150x150.jpg')
GO

