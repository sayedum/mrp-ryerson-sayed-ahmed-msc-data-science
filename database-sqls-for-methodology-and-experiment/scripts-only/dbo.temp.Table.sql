USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 2019-07-17 5:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp](
	[participant_id] [float] NULL,
	[participant_age] [float] NULL,
	[average_taken] [float] NULL,
	[food_group] [nvarchar](255) NULL,
	[recommended_low] [float] NULL,
	[recommended_high] [float] NULL
) ON [PRIMARY]
GO
