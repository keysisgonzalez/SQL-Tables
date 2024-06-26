USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[CustomerSkills]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSkills](
	[CustomerId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerSkills] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerSkills]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSkills_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CustomerSkills] CHECK CONSTRAINT [FK_CustomerSkills_Customers]
GO
ALTER TABLE [dbo].[CustomerSkills]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSkills_Skills2] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills2] ([Id])
GO
ALTER TABLE [dbo].[CustomerSkills] CHECK CONSTRAINT [FK_CustomerSkills_Skills2]
GO
