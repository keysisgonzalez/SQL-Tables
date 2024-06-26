USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Storage] [nvarchar](50) NOT NULL,
	[PrimaryImageUrl] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Computers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Computers] ADD  CONSTRAINT [DF_Computers_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Computers] ADD  CONSTRAINT [DF_Computers_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
