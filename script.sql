USE [master]
GO
/****** Object:  Database [wardrobe]    Script Date: 10/21/2016 9:44:24 AM ******/
CREATE DATABASE [wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](100) NULL,
	[AccessoryTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessoryTypes]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryTypes](
	[AccessoryTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[AccessoryTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](100) NULL,
	[BottomTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BottomTypes]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomTypes](
	[BottomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BottomTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BottomType] PRIMARY KEY CLUSTERED 
(
	[BottomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](25) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footwear]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footwear](
	[FootwearID] [int] IDENTITY(1,1) NOT NULL,
	[FootwearName] [nvarchar](50) NOT NULL,
	[FootwearPhoto] [nvarchar](100) NULL,
	[FootwearTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Footwear] PRIMARY KEY CLUSTERED 
(
	[FootwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FootwearTypes]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FootwearTypes](
	[FootwearTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FootwearTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FootwearTypes] PRIMARY KEY CLUSTERED 
(
	[FootwearTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occassions]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occassions](
	[OccassionID] [int] IDENTITY(1,1) NOT NULL,
	[OccassionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occassions] PRIMARY KEY CLUSTERED 
(
	[OccassionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [varchar](50) NOT NULL,
	[TopID] [int] NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NULL,
	[AccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](100) NULL,
	[TopTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TopTypes]    Script Date: 10/21/2016 9:44:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopTypes](
	[TopTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TopTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TopTypes] PRIMARY KEY CLUSTERED 
(
	[TopTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_AccessoryTypes] FOREIGN KEY([AccessoryTypeID])
REFERENCES [dbo].[AccessoryTypes] ([AccessoryTypeID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_AccessoryTypes]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Colors]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occassions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassions] ([OccassionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occassions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_BottomTypes] FOREIGN KEY([BottomTypeID])
REFERENCES [dbo].[BottomTypes] ([BottomTypeID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_BottomTypes]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Colors]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occassions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassions] ([OccassionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occassions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Colors]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_FootwearTypes] FOREIGN KEY([FootwearTypeID])
REFERENCES [dbo].[FootwearTypes] ([FootwearTypeID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_FootwearTypes]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Occassions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassions] ([OccassionID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Occassions]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Seasons]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessories]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottoms]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Footwear] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Footwear] ([FootwearID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Footwear]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Colors]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occassions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassions] ([OccassionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occassions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_TopTypes] FOREIGN KEY([TopTypeID])
REFERENCES [dbo].[TopTypes] ([TopTypeID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_TopTypes]
GO
USE [master]
GO
ALTER DATABASE [wardrobe] SET  READ_WRITE 
GO
