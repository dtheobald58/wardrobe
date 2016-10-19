USE [wardrobe]
GO

/****** Object:  Table [dbo].[Occassions]    Script Date: 10/19/2016 3:50:58 AM ******/
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

