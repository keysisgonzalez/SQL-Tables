USE [C138_keysis917_gmail]
GO
/****** Object:  Table [sab].[OfficeAssignment]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sab].[OfficeAssignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](10) NULL,
	[DateAssigned] [datetime] NOT NULL,
 CONSTRAINT [PK_OfficeAssignment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sab].[OfficeAssignment] ADD  CONSTRAINT [DF_OfficeAssignment_DateAssigned]  DEFAULT (getutcdate()) FOR [DateAssigned]
GO
ALTER TABLE [sab].[OfficeAssignment]  WITH CHECK ADD  CONSTRAINT [FK_OfficeAssignment_Person] FOREIGN KEY([InstructorId])
REFERENCES [sab].[Person] ([PersonId])
GO
ALTER TABLE [sab].[OfficeAssignment] CHECK CONSTRAINT [FK_OfficeAssignment_Person]
GO
