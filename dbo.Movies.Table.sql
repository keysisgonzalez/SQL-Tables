USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Movies] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL
) ON [PRIMARY]
GO
