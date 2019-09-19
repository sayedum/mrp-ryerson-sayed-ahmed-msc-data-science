USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[age_combined_subgroup_recommended_age]    Script Date: 2019-07-17 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[age_combined_subgroup_recommended_age](
	[age_from] [int] NOT NULL,
	[age_to] [int] NOT NULL,
	[dark_green_taken] [float] NOT NULL,
	[dark_green_low] [float] NOT NULL,
	[dark_green_high] [float] NOT NULL,
	[legumes_beans_peas_taken] [float] NOT NULL,
	[legumes_beans_peas__low] [float] NOT NULL,
	[legumes_beans_peas_high] [float] NOT NULL,
	[meat_poultry_eggs_taken] [int] NOT NULL,
	[meat_poultry_eggs_low] [int] NOT NULL,
	[meat_poultry_eggs_high] [int] NOT NULL,
	[nuts_seeds_taken] [int] NOT NULL,
	[nuts_seeds_low] [int] NOT NULL,
	[nuts_seeds_high] [int] NOT NULL,
	[other_vegetables_taken] [float] NOT NULL,
	[other_vegetables_low] [float] NOT NULL,
	[other_vegetables_high] [float] NOT NULL,
	[red_orange_vegetables_taken] [float] NOT NULL,
	[red_orange_vegetables_low] [float] NOT NULL,
	[red_orange_vegetables_high] [float] NOT NULL,
	[seafood_taken] [int] NOT NULL,
	[seafood_low] [int] NOT NULL,
	[seafood_high] [int] NOT NULL,
	[starchy_vegetables_taken] [float] NOT NULL,
	[starchy_vegetables_low] [float] NOT NULL,
	[starchy_vegetables_high] [int] NOT NULL
) ON [PRIMARY]
GO
