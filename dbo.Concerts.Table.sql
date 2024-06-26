USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Concerts]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concerts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[IsFree] [bit] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Cost] [int] NOT NULL,
	[DateOfEvent] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Concerts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
