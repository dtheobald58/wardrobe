USE [wardrobe]
GO

/****** Object:  Table [dbo].[Footwear]    Script Date: 10/19/2016 3:50:36 AM ******/
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

