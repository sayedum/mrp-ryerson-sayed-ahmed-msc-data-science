USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[map_food_to_groups_sub_groups]    Script Date: 2019-07-17 5:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[map_food_to_groups_sub_groups](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[usda_food_code] [varchar](255) NOT NULL,
	[food_name] [varchar](300) NOT NULL,
	[group_id] [smallint] NULL,
	[sub_group_id] [smallint] NULL,
	[group_name] [varchar](500) NULL,
	[subgroup_name] [varchar](500) NULL,
	[id_for_group_sum] [tinyint] NULL,
	[id_for_subgroup_sum] [tinyint] NULL,
	[name_for_group_sum] [varchar](100) NULL,
	[name_for_subgroup_sum] [varchar](100) NULL,
 CONSTRAINT [PK_map_food_to_groups_sub_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[map_food_to_groups_sub_groups]  WITH CHECK ADD  CONSTRAINT [FK_map_food_to_groups_sub_groups_map_food_to_groups_sub_groups] FOREIGN KEY([id])
REFERENCES [dbo].[map_food_to_groups_sub_groups] ([id])
GO
ALTER TABLE [dbo].[map_food_to_groups_sub_groups] CHECK CONSTRAINT [FK_map_food_to_groups_sub_groups_map_food_to_groups_sub_groups]
GO
