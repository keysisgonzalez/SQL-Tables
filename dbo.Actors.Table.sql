USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 4/29/2024 10:41:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[StatusId] [int] NOT NULL,
	[PrimaryImageUrl] [nvarchar](128) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actors] ADD  CONSTRAINT [DF_Actors_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Actors] ADD  CONSTRAINT [DF_Actors_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
