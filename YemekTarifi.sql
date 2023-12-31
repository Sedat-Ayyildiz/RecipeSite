USE [YemekTarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiid] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](30) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajIcerik] [varchar](500) NULL,
 CONSTRAINT [PK_Tbl_Mesajlar] PRIMARY KEY CLUSTERED 
(
	[Mesajid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[Tarifid] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[Tarifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[Yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[Yoneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 29.06.2023 04:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[YorumIcerik] [varchar](500) NULL,
	[Yemekid] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Makarnalar', 5, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Salatalar', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Pizzalar', 8, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Etli Yemekler', 5, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yonetici] ON 

INSERT [dbo].[Tbl_Yonetici] ([Yoneticiid], [YoneticiAd], [YoneticiSifre]) VALUES (1, N'Sedat', N'702')
SET IDENTITY_INSERT [dbo].[Tbl_Yonetici] OFF
GO
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([Yemekid])
REFERENCES [dbo].[Tbl_Yemekler] ([Yemekid])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
