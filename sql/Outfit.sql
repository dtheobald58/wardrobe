USE [wardrobe]
GO

/****** Object:  Table [dbo].[Outfit]    Script Date: 10/19/2016 3:51:06 AM ******/
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

