USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[PlayersV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayersV2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[StatusId] [int] NOT NULL,
	[PrimaryImageId] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_PlayersV2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PlayersV2] ADD  CONSTRAINT [DF_PlayersV2_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[PlayersV2] ADD  CONSTRAINT [DF_PlayersV2_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[PlayersV2]  WITH CHECK ADD  CONSTRAINT [FK_PlayersV2_PlayersImages] FOREIGN KEY([PrimaryImageId])
REFERENCES [dbo].[PlayersImages] ([Id])
GO
ALTER TABLE [dbo].[PlayersV2] CHECK CONSTRAINT [FK_PlayersV2_PlayersImages]
GO
