USE [wardrobe]
GO

/****** Object:  Table [dbo].[FootwearTypes]    Script Date: 10/19/2016 3:50:47 AM ******/
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

