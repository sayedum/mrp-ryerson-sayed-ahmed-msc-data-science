USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[old_usda_food_group_subgroup_relations]    Script Date: 2019-07-17 5:30:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[old_usda_food_group_subgroup_relations](
	[entry_id] [smallint] IDENTITY(1,1) NOT NULL,
	[usda_food_group_id] [int] NULL,
	[food_group_name] [varchar](500) NULL,
	[usda_subgroup_id] [nvarchar](50) NOT NULL,
	[usda_subgroup_name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[old_usda_food_group_subgroup_relations] ON 

INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (1, 7, N'Vegetables', N'71', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (4, 7, N'Vegetables', N'72', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (5, 7, N'Vegetables', N'73', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (6, 7, N'Vegetables', N'74', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (7, 7, N'Vegetables', N'75', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (8, 7, N'Vegetables', N'76', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (9, 7, N'Vegetables', N'77', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (10, 7, N'Vegetables', N'78', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (11, 1, N'Milk and milk products', N'11', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (12, 1, N'Milk and milk products', N'12', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (13, 1, N'Milk and milk products', N'13', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (14, 1, N'Milk and milk products', N'14', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (16, 2, N'Meat, poultry, fish, and mixtures', N'20', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (17, 2, N'Meat, poultry, fish, and mixtures', N'21', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (18, 2, N'Meat, poultry, fish, and mixtures', N'22', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (19, 2, N'Meat, poultry, fish, and mixtures', N'23', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (20, 2, N'Meat, poultry, fish, and mixtures', N'24', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (21, 2, N'Meat, poultry, fish, and mixtures', N'251', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (22, 2, N'Meat, poultry, fish, and mixtures', N'271', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (23, 2, N'Meat, poultry, fish, and mixtures', N'281', N'1')
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (24, 3, N'Eggs', N'31', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (25, 3, N'Eggs', N'32', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (26, 3, N'Eggs', N'33', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (27, 3, N'Eggs', N'35', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (28, 4, N'Legumes, nuts, and seeds', N'41', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (29, 4, N'Legumes, nuts, and seeds', N'42', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (30, 4, N'Legumes, nuts, and seeds', N'43', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (31, 4, N'Legumes, nuts, and seeds', N'44', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (32, 5, N'Grain products', N'50', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (33, 5, N'Grain products', N'51', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (34, 5, N'Grain products', N'52', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (35, 5, N'Grain products', N'53', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (36, 5, N'Grain products', N'54', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (37, 5, N'Grain products', N'55', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (38, 5, N'Grain products', N'56', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (39, 5, N'Grain products', N'57', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (40, 5, N'Grain products', N'58', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (41, 5, N'Grain products', N'59', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (45, 6, N'Fruits', N'61', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (46, 6, N'Fruits', N'62', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (47, 6, N'Fruits', N'63', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (48, 6, N'Fruits', N'64', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (49, 6, N'Fruits', N'67', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (50, 8, N'Fats, oils, and salad dressings', N'81', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (51, 8, N'Fats, oils, and salad dressings', N'82', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (52, 8, N'Fats, oils, and salad dressings', N'83', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (54, 9, N'Sugars, sweets, and beverages', N'91', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (55, 9, N'Sugars, sweets, and beverages', N'92', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (56, 9, N'Sugars, sweets, and beverages', N'93', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (57, 9, N'Sugars, sweets, and beverages', N'94', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (58, 9, N'Sugars, sweets, and beverages', N'95', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (59, 2, N'Meat, poultry, fish, and mixtures', N'252', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (60, 2, N'Meat, poultry, fish, and mixtures', N'272', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (61, 2, N'Meat, poultry, fish, and mixtures', N'273', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (62, 2, N'Meat, poultry, fish, and mixtures', N'274', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (63, 2, N'Meat, poultry, fish, and mixtures', N'275', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (64, 2, N'Meat, poultry, fish, and mixtures', N'276', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (65, 2, N'Meat, poultry, fish, and mixtures', N'283', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (66, 2, N'Meat, poultry, fish, and mixtures', N'284', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (67, 2, N'Meat, poultry, fish, and mixtures', N'285', NULL)
INSERT [dbo].[old_usda_food_group_subgroup_relations] ([entry_id], [usda_food_group_id], [food_group_name], [usda_subgroup_id], [usda_subgroup_name]) VALUES (68, 2, N'Meat, poultry, fish, and mixtures', N'26', NULL)
SET IDENTITY_INSERT [dbo].[old_usda_food_group_subgroup_relations] OFF
