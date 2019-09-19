USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[combined_subgroup_recommended_age_groups]    Script Date: 2019-07-17 5:30:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combined_subgroup_recommended_age_groups](
	[age_from] [int] NOT NULL,
	[age_to] [int] NOT NULL,
	[subgroup] [nvarchar](50) NOT NULL,
	[food_subgroup] [nvarchar](50) NOT NULL,
	[average_taken] [float] NOT NULL,
	[recommended_low] [float] NOT NULL,
	[recommended_high] [float] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'dark green vegetables', N'dark_green_vegetables', 37.5, 75, 150)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'dark green vegetables', N'dark_green_vegetables', 60, 150, 225)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'dark green vegetables', N'dark_green_vegetables', 60, 187.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'dark green vegetables', N'dark_green_vegetables', 67.5, 225, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'dark green vegetables', N'dark_green_vegetables', 97.5, 262.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'dark green vegetables', N'dark_green_vegetables', 135, 262.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'dark green vegetables', N'dark_green_vegetables', 180, 225, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'dark green vegetables', N'dark_green_vegetables', 127.5, 225, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'legumes beans and peas', N'legumes_beans_and_peas', 60, 60, 90)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'legumes beans and peas', N'legumes_beans_and_peas', 60, 75, 225)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'legumes beans and peas', N'legumes_beans_and_peas', 75, 112.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'legumes beans and peas', N'legumes_beans_and_peas', 75, 225, 375)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'legumes beans and peas', N'legumes_beans_and_peas', 112.5, 262.5, 375)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'legumes beans and peas', N'legumes_beans_and_peas', 135, 262.5, 375)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'legumes beans and peas', N'legumes_beans_and_peas', 105, 187.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'legumes beans and peas', N'legumes_beans_and_peas', 97.5, 187.5, 337.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'meat poultry and eggs', N'meat_poultry_and_eggs', 2400, 1500, 2850)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'meat poultry and eggs', N'meat_poultry_and_eggs', 3300, 2100, 3750)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'meat poultry and eggs', N'meat_poultry_and_eggs', 4050, 3225, 4500)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'meat poultry and eggs', N'meat_poultry_and_eggs', 4800, 3750, 4875)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'meat poultry and eggs', N'meat_poultry_and_eggs', 5400, 4125, 4875)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'meat poultry and eggs', N'meat_poultry_and_eggs', 5475, 3975, 4725)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'meat poultry and eggs', N'meat_poultry_and_eggs', 4950, 3750, 4725)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'meat poultry and eggs', N'meat_poultry_and_eggs', 4050, 3750, 4725)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 300, 300, 450)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 450, 300, 675)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 525, 525, 750)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 450, 675, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 525, 675, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 825, 675, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 825, 675, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'nuts seeds and soy products', N'nuts_seeds_and_soy_products', 825, 675, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'other vegetables', N'other_vegetables', 172.5, 225, 375)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'other vegetables', N'other_vegetables', 202.5, 375, 600)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'other vegetables', N'other_vegetables', 270, 450, 787.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'other vegetables', N'other_vegetables', 367.5, 600, 900)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'other vegetables', N'other_vegetables', 547.5, 675, 900)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'other vegetables', N'other_vegetables', 615, 675, 900)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'other vegetables', N'other_vegetables', 697.5, 562.5, 787.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'other vegetables', N'other_vegetables', 562.5, 562.5, 787.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'red and orange vegetables', N'red_and_orange_vegetables', 217.5, 375, 450)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'red and orange vegetables', N'red_and_orange_vegetables', 270, 450, 825)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'red and orange vegetables', N'red_and_orange_vegetables', 307.5, 525, 975)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'red and orange vegetables', N'red_and_orange_vegetables', 360, 825, 1012.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'red and orange vegetables', N'red_and_orange_vegetables', 435, 862.5, 1012.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'red and orange vegetables', N'red_and_orange_vegetables', 442.5, 862.5, 1012.5)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'red and orange vegetables', N'red_and_orange_vegetables', 435, 712.5, 975)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'red and orange vegetables', N'red_and_orange_vegetables', 405, 712.5, 975)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'seafood', N'seafood', 150, 450, 900)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'seafood', N'seafood', 150, 600, 1200)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'seafood', N'seafood', 225, 1050, 1425)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'seafood', N'seafood', 225, 1200, 1500)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 120, N'seafood', N'seafood', 2475, 900, 1500)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'seafood', N'seafood', 675, 1275, 1425)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'seafood', N'seafood', 675, 1200, 1425)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'seafood', N'seafood', 600, 1200, 1425)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (1, 3, N'starchy vegetables', N'starchy_vegetables', 232.5, 300, 525)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (4, 8, N'starchy vegetables', N'starchy_vegetables', 330, 525, 750)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (9, 13, N'starchy vegetables', N'starchy_vegetables', 405, 562.5, 975)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (14, 18, N'starchy vegetables', N'starchy_vegetables', 427.5, 750, 1050)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (19, 30, N'starchy vegetables', N'starchy_vegetables', 450, 825, 1050)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (31, 50, N'starchy vegetables', N'starchy_vegetables', 495, 825, 1050)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (51, 70, N'starchy vegetables', N'starchy_vegetables', 510, 675, 975)
INSERT [dbo].[combined_subgroup_recommended_age_groups] ([age_from], [age_to], [subgroup], [food_subgroup], [average_taken], [recommended_low], [recommended_high]) VALUES (71, 120, N'starchy vegetables', N'starchy_vegetables', 502.5, 675, 975)
