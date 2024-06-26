USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[ImageId] [int] NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_Table1_ImageTable] FOREIGN KEY([ImageId])
REFERENCES [dbo].[ImageTable] ([Id])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_Table1_ImageTable]
GO
