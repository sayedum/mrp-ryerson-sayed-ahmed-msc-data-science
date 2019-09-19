USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[age_groups_remaining]    Script Date: 2019-07-17 5:30:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[age_groups_remaining](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[from] [smallint] NOT NULL,
	[to] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[age_groups_remaining] ON 

INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (1, 0, 14)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (2, 15, 19)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (3, 20, 24)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (4, 25, 29)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (5, 30, 34)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (6, 35, 39)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (7, 40, 44)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (8, 45, 49)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (9, 50, 54)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (10, 55, 59)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (11, 60, 64)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (12, 65, 69)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (13, 70, 74)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (14, 75, 79)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (15, 80, 84)
INSERT [dbo].[age_groups_remaining] ([id], [from], [to]) VALUES (16, 85, 150)
SET IDENTITY_INSERT [dbo].[age_groups_remaining] OFF
