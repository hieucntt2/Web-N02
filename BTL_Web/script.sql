create database [QLCuaHangThucPham_N02]

USE [QLCuaHangThucPham_N02]
GO
/****** Object:  Table [dbo].[AnhSP]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSP](
	[MaAnh] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](15) NOT NULL,
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
	[MaDH] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](15) NOT NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/10/2022 12:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [nvarchar](15) NOT NULL,
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
	[MaGia] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](15) NULL,
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
	[MaLoai] [nvarchar](15) NOT NULL,
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
	[MaPTTT] [nvarchar](15) NOT NULL,
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
	[MaSP] [nvarchar](15) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GTSP] [nvarchar](50) NULL,
	[MaLoai] [nvarchar](15) NULL,
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
	[MaTT] [nvarchar](15) NOT NULL,
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
	[MaDH] [nvarchar](15) NOT NULL,
	[MaPTTT] [nvarchar](15) NOT NULL,
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



INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'LSP1', N'Rau Củ', CAST(N'2022-03-26T15:34:43.323' AS DateTime), CAST(N'2022-03-26T15:34:43.323' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'LSP2', N'Trái Cây', CAST(N'2022-03-26T15:35:00.800' AS DateTime), CAST(N'2022-03-26T15:35:00.800' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'lSP3', N'Đồ Uống', CAST(N'2022-03-26T15:35:35.597' AS DateTime), CAST(N'2022-03-26T15:35:35.597' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'LSP4', N'Đồ Khô', CAST(N'2022-03-26T15:36:02.323' AS DateTime), CAST(N'2022-03-26T15:36:02.323' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'13213', N'4546', N'465', N'LSP2', 6546, CAST(N'2022-03-19T16:25:34.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP1', N'Cà Chua', NULL, N'LSP2', 1000, CAST(N'2022-03-26T15:37:20.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP10', N'Nho Xanh', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:53:11.037' AS DateTime), CAST(N'2022-03-27T01:53:11.037' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP11', N'Ớt', NULL, N'LSP1', 200, CAST(N'2022-03-27T01:53:40.697' AS DateTime), CAST(N'2022-03-27T01:53:40.697' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP12', N'Quả óc chó', NULL, N'LSP4', 200, CAST(N'2022-03-27T01:54:16.837' AS DateTime), CAST(N'2022-03-27T01:54:16.837' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP13', N'Súp Lơ', NULL, N'LSP1', 200, CAST(N'2022-03-27T01:55:02.750' AS DateTime), CAST(N'2022-03-27T01:55:02.750' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP14', N'Táo Xanh', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:55:44.530' AS DateTime), CAST(N'2022-03-27T01:55:44.530' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP15', N'Thơm(Dứa)', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:56:27.247' AS DateTime), CAST(N'2022-03-27T01:56:27.247' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP2', N'Cam', NULL, N'LSP2', 200, CAST(N'2022-03-26T15:37:52.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP3', N'Chanh', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:38:55.453' AS DateTime), CAST(N'2022-03-27T01:38:55.453' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP4', N'Chanh Dây', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:48:34.150' AS DateTime), CAST(N'2022-03-27T01:48:34.150' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP5', N'Chuối', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:49:09.413' AS DateTime), CAST(N'2022-03-27T01:49:09.413' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP6', N'Đào', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:50:17.400' AS DateTime), CAST(N'2022-03-27T01:50:17.400' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP7', N'Dưa Leo', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:50:59.357' AS DateTime), CAST(N'2022-03-27T01:50:59.357' AS DateTime), NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP8', N'Dừa Sáp', NULL, N'LSP2', 200, CAST(N'2022-03-27T01:51:34.000' AS DateTime), NULL, NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GTSP], [MaLoai], [SL], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'SP9', N'Lựu', NULL, N'LSP1', 200, CAST(N'2022-03-27T01:52:40.990' AS DateTime), CAST(N'2022-03-27T01:52:40.990' AS DateTime), NULL, 0, 0)
GO
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia1', N'SP1', 320000.0000, CAST(N'2022-03-29T11:05:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia10', N'SP10', 320000.0000, CAST(N'2022-03-18T11:17:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia11', N'SP11', 450000.0000, CAST(N'2022-03-22T11:18:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia12', N'SP12', 120000.0000, CAST(N'2022-03-17T11:18:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia13', N'SP13', 350000.0000, CAST(N'2022-03-15T11:19:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia14', N'SP14', 220000.0000, CAST(N'2022-03-14T11:19:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia15', N'SP15', 150000.0000, CAST(N'2022-03-24T11:20:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia2', N'SP2', 250000.0000, CAST(N'2022-03-30T11:06:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia3', N'SP3', 210000.0000, CAST(N'2022-03-23T11:06:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia4', N'SP4', 190000.0000, CAST(N'2022-03-14T11:07:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia5', N'SP5', 150000.0000, CAST(N'2022-03-15T11:12:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia6', N'SP6', 330000.0000, CAST(N'2022-03-14T11:13:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia7', N'SP7', 50000.0000, CAST(N'2022-03-14T11:14:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia8', N'SP8', 350000.0000, CAST(N'2022-03-18T11:14:00.000' AS DateTime), NULL)
INSERT [dbo].[GiaSP] ([MaGia], [MaSP], [Gia], [Time_Begin], [Time_End]) VALUES (N'Gia9', N'SP9', 170000.0000, CAST(N'2022-03-22T11:14:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [GioiTinh], [Tuoi], [Email], [SDT], [Time_Create], [Time_Update], [NguoiTao], [isActive], [isDelete]) VALUES (N'1', N'3123', N'1', 32, N'321', N'1321', CAST(N'2022-03-21T13:47:50.037' AS DateTime), CAST(N'2022-03-21T13:47:50.037' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh01', N'SP1', N'Cà Chua', N'product-22-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh010', N'SP11', N'Ớt', N'product-21-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh011', N'SP11', N'Ớt', N'product-21-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh012', N'SP11', N'Ớt', N'product-21-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh013', N'SP12', N'quả Óc Chó', N'product-6-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh014', N'SP12', N'Quả Óc Chó', N'product-6-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh015', N'SP12', N'Quả Óc Chó', N'product-6-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh016', N'SP12', N'Quả Óc Chó', N'product-6-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh017', N'SP13', N'Súp Lơ', N'product-4-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh018', N'SP13', N'Súp Lơ', N'product-4-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh019', N'SP13', N'Súp Lơ', N'product-4-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh02', N'SP1', N'Cà Chua 2', N'product-22-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh020', N'SP13', N'Súp Lơ', N'product-4-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh021', N'SP14', N'Táo Xanh', N'product-1-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh022', N'SP14', N'Táo Xanh', N'product-1-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh023', N'SP14', N'Táo Xanh', N'product-1-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh024', N'SP14', N'Táo Xanh', N'product-1-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh025', N'SP15', N'Dứa', N'product-23-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh026', N'SP15', N'Dứa', N'product-23-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh027', N'SP15', N'Dứa', N'product-23-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh028', N'SP15', N'Dứa', N'product-23-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh029', N'SP2', N'Cam', N'product-5.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh03', N'SP1', N'Cà Chua', N'product-22-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh030', N'SP2', N'Cam', N'product-5-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh031', N'SP2', N'Cam', N'product-5-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh032', N'SP2', N'Cam', N'product-5-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh033', N'SP3', N'Chanh', N'product-7-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh034', N'SP3', N'Chanh', N'product-7-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh035', N'SP3', N'Chanh', N'product-7-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh036', N'SP3', N'Chanh', N'product-7-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh037', N'SP4', N'Chanh Dây', N'product-15-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh038', N'SP4', N'Chanh Dây', N'product-15-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh039', N'SP4', N'Chanh Dây', N'product-15-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh04', N'SP1', N'Cà Chua', N'product-22-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh040', N'SP4', N'Chanh Dây', N'product-15-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh041', N'SP5', N'Chuối', N'product-12-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh042', N'SP1', N'Chuối', N'product-12-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh043', N'SP1', N'Chuối', N'product-12-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh044', N'SP5', N'Chuối', N'product-12-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh045', N'SP6', N'Đào', N'product-24-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh046', N'SP6', N'Đào', N'product-24-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh047', N'SP1', N'Đào', N'product-24-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh048', N'SP6', N'Đào', N'product-24-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh049', N'SP7', N'Dưa Leo', N'product-16-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh05', N'SP10', N'Nho Xanh', N'product-9-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh050', N'SP7', N'Dưa Leo', N'product-16-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh051', N'SP1', N'Dưa Leo', N'product-16-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh052', N'SP7', N'Dưa Leo', N'product-16-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh053', N'SP8', N'Dừa', N'product-11-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh054', N'SP8', N'Dừa', N'product-11-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh055', N'SP8', NULL, N'product-11-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh056', N'SP8', N'Dừa', N'product-11-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh057', N'SP9', N'Lựu', N'product-25-470x470.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh058', N'SP9', N'Lựu', N'product-25-470x470-100x100.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh059', N'SP9', N'Lựu', N'product-25-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh06', N'SP10', N'Nho Xanh', N'product-9-470x470-150x150.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh060', N'SP9', N'Lựu', N'product-25-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh07', N'SP10', N'Nho Xanh', N'product-9-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh08', N'SP10', N'Nho Xanh', N'product-9-470x470-300x300.jpg')
INSERT [dbo].[AnhSP] ([MaAnh], [MaSP], [TenAnh], [URL]) VALUES (N'Anh09', N'SP11', N'Ớt', N'product-21-470x470-150x150.jpg')
GO

