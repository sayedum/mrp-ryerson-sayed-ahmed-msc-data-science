USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[all_ages]    Script Date: 2019-07-17 5:30:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[all_ages](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[from] [smallint] NOT NULL,
	[to] [smallint] NOT NULL
) ON [PRIMARY]
GO
