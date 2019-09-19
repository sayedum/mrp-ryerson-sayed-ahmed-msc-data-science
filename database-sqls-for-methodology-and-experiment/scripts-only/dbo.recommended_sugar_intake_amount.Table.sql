USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[recommended_sugar_intake_amount]    Script Date: 2019-07-17 5:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recommended_sugar_intake_amount](
	[Age] [float] NULL,
	[Calorie] [float] NULL,
	[F3] [float] NULL,
	[F4] [float] NULL,
	[Recommended Cal from Sugar] [float] NULL,
	[Recommended Gm] [float] NULL,
	[Recommended High] [float] NULL,
	[Recommended Low] [float] NULL,
	[Average Taken] [float] NULL
) ON [PRIMARY]
GO
