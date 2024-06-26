USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[ActorsImages]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActorsImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypedId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ActrosImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
