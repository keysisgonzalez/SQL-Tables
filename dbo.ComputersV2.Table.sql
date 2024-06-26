USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[ComputersV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputersV2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Storage] [nvarchar](50) NOT NULL,
	[PrimaryImageId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ComputersV2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComputersV2] ADD  CONSTRAINT [DF_ComputersV2_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ComputersV2] ADD  CONSTRAINT [DF_ComputersV2_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[ComputersV2]  WITH CHECK ADD  CONSTRAINT [FK_ComputersV2_ComputerImg] FOREIGN KEY([PrimaryImageId])
REFERENCES [dbo].[ComputerImage] ([Id])
GO
ALTER TABLE [dbo].[ComputersV2] CHECK CONSTRAINT [FK_ComputersV2_ComputerImg]
GO
