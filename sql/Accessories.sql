USE [wardrobe]
GO

/****** Object:  Table [dbo].[Accessories]    Script Date: 10/19/2016 3:49:28 AM ******/
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

