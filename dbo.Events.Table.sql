USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[DateAddedd] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL
) ON [PRIMARY]
GO
