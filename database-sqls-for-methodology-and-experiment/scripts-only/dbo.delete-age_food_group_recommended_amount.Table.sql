USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[delete-age_food_group_recommended_amount]    Script Date: 2019-07-17 5:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delete-age_food_group_recommended_amount](
	[age] [int] NOT NULL,
	[food_group] [nvarchar](50) NOT NULL,
	[average_taken] [float] NOT NULL,
	[recommended_low] [float] NOT NULL,
	[recommended_high] [float] NOT NULL
) ON [PRIMARY]
GO
