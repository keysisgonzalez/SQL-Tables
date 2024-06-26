USE [C138_keysis917_gmail]
GO
/****** Object:  Table [dbo].[ComputerMonitors]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerMonitors](
	[MonitorId] [int] NOT NULL,
	[ComputerId] [int] NOT NULL,
 CONSTRAINT [PK_ComputerMonitors] PRIMARY KEY CLUSTERED 
(
	[MonitorId] ASC,
	[ComputerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComputerMonitors]  WITH CHECK ADD  CONSTRAINT [FK_ComputerMonitors_ComputersV2] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[ComputersV2] ([Id])
GO
ALTER TABLE [dbo].[ComputerMonitors] CHECK CONSTRAINT [FK_ComputerMonitors_ComputersV2]
GO
ALTER TABLE [dbo].[ComputerMonitors]  WITH CHECK ADD  CONSTRAINT [FK_ComputerMonitors_Monitors] FOREIGN KEY([MonitorId])
REFERENCES [dbo].[Monitors] ([Id])
GO
ALTER TABLE [dbo].[ComputerMonitors] CHECK CONSTRAINT [FK_ComputerMonitors_Monitors]
GO
