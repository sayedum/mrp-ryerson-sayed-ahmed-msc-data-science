USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[new_usda_food_group_subgroup_relations]    Script Date: 2019-07-17 5:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[new_usda_food_group_subgroup_relations](
	[usda_food_group_id] [int] NULL,
	[food_group_name] [varchar](500) NULL,
	[usda_subgroup_id] [nvarchar](50) NOT NULL,
	[usda_subgroup_name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
