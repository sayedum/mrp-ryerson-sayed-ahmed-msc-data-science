USE [mrp_experiment_phase_data_process]
GO
/****** Object:  StoredProcedure [dbo].[usda_subgroups_assign_groups_and_subgroup_to_food_items]    Script Date: 2019-07-17 5:28:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[usda_subgroups_assign_groups_and_subgroup_to_food_items]
AS
BEGIN

   -- very important. Assign food groups and subgroups correctly.
   -- Groups/SubGroups are based on Shift Recommendation Article

    -- delete data from the table [usda_subgroups_map_food_to_groups_sub_groups] 
	truncate table [usda_subgroups_map_food_to_groups_sub_groups]

	---result 8690
	insert into [usda_subgroups_map_food_to_groups_sub_groups] (usda_food_code, food_name)
	SELECT cast([DRXFDCD] as int), cast([DRXFCSD] as varchar)
	from [2015-2016-support-food-codes-DRXFCD_I]

	---

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]

	--Assign primary food group id
	--match code with usda code using usda_food_groups
	--insert id from food_groups_shift_recommendation
	---test to find the correct id
	select map.food_name
	, map.usda_food_code
	, substring(map.usda_food_code,1,1) as first_digit_usda_food_code
	, usda.id as recom_usda_group_id	
	, usda.food_group_name_to_use as usda_food_group_name
	, map.*
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	inner join usda_food_groups usda on substring(map.usda_food_code,1,1) = usda.id  
	order by usda.id

	

	update [usda_subgroups_map_food_to_groups_sub_groups] 
	set group_id = (	
		select  usda.id_to_use
		from [usda_subgroups_map_food_to_groups_sub_groups] map2
		inner join usda_food_groups usda on substring(map2.usda_food_code,1,1) = usda.id  
		where map2.id = [usda_subgroups_map_food_to_groups_sub_groups].id
	)

	--check all group assignment
	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups] usda
	order by usda.usda_food_code

	--test group assignment one by one
	
	--scan by eye
	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where substring(usda_food_code,1,1) = 9

	--find distinct group ids
	select distinct(map.group_id) as unique_group_ids 
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	where substring(map.usda_food_code,1,1) = 9


	update [usda_subgroups_map_food_to_groups_sub_groups] 
	set [usda_subgroups_map_food_to_groups_sub_groups].group_name = (	
		--select  recom.food_group_name
		select  usda.food_group_name_to_use
		from [usda_subgroups_map_food_to_groups_sub_groups] map2
		inner join usda_food_groups usda on usda.id = substring(map2.usda_food_code,1,1) --and (usda.is_in_usda = 1)
		where map2.id = [usda_subgroups_map_food_to_groups_sub_groups].id
	)

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	order by food_name

	--scan by eye
	--has to match as follows
	
	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where substring(usda_food_code,1,1) = 9

	--find distinct group names
	select distinct(map.group_name) as unique_group_names 
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	where substring(map.usda_food_code,1,1) = 9

	-- see how many distinct group names
	select distinct(map.group_name) as unique_group_names 
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	order by unique_group_names

	
	---- SUB Group ---
	-- does not give complete picture as I used subgroup codes that are 4 or 5 char long
	select distinct(substring(map.usda_food_code, 1, 2) ) as code
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	order by code

	---test to find the correct id
	select 
	len(usda.usda_subgroup_id) length_code_1
	, map.id
	, map.usda_food_code
	, map.food_name
	, map.group_id 
	,usda.usda_food_group_id
	, usda.food_group_name
	, substring(map.usda_food_code,1,2) as subgroup_code
	, usda.usda_subgroup_id as recom_id
	, usda.entry_id as recom_id_to_use
	--,  usda.[usda_subgroup_code_1]
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	inner join usda_food_group_subgroup_relations usda on 
	
	substring(map.usda_food_code,1,2) = usda.usda_subgroup_id
	or
	substring(map.usda_food_code,1,3) = usda.usda_subgroup_id
	or
	substring(map.usda_food_code,1,4) = usda.usda_subgroup_id
	or
	substring(map.usda_food_code,1,5) = usda.usda_subgroup_id		
	order by usda_food_code

	--set subgroup id
	update [usda_subgroups_map_food_to_groups_sub_groups] 
	set sub_group_id = (	
		--select   usda.id_to_use -- NEED Attention
		select   usda.entry_id -- NEED Attention
		from [usda_subgroups_map_food_to_groups_sub_groups] map
		inner join usda_food_group_subgroup_relations usda on 				
		substring(map.usda_food_code,1,2) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,3) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,4) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,5) = usda.usda_subgroup_id				
		where map.id = [usda_subgroups_map_food_to_groups_sub_groups].id
	)


	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	--where sub_group_id is not null
	order by sub_group_id desc

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where sub_group_id is  null
	order by sub_group_id desc

	-- test sub group assignment one by one
	-- Group id in the output will be id_to_use from shift_recommendation table
	-- food code starting with 1 -> shift id_t_use = 11 = Dairy -- though verify with the table as well 
	--Shift: 11 = dairy, 12 = Protein, 1 = Vegetable, 8 = Grain, 7 = fruits, 17 = Fats, oils, and salad dressings, 16 = Sugars, sweets, and beverages

	--scan by eye
	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where substring(usda_food_code,1,1) = 4

	--find distinct group ids
	select distinct(map.sub_group_id) as unique_sub_group_ids 
	from [usda_subgroups_map_food_to_groups_sub_groups] map
	where substring(map.usda_food_code,1,1) = 4

	--update subgroup name
	update [usda_subgroups_map_food_to_groups_sub_groups] 
	set [usda_subgroups_map_food_to_groups_sub_groups].subgroup_name = (	
		select   
		usda.food_group_name
		--recom.name_to_use
		from [usda_subgroups_map_food_to_groups_sub_groups] map
		
		inner join usda_food_group_subgroup_relations usda on 

		substring(map.usda_food_code,1,2) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,3) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,4) = usda.usda_subgroup_id
		or
		substring(map.usda_food_code,1,5) = usda.usda_subgroup_id
		where   map.id = [usda_subgroups_map_food_to_groups_sub_groups].id
	)

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where usda_food_code like '3%'

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where group_id=3

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where subgroup_name is  null

	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where subgroup_name is not null
	order by sub_group_id --desc

	--find all legumes and peas
	select * from [usda_subgroups_map_food_to_groups_sub_groups]
	where group_id = 4 and sub_group_id=4

	-- Manual changes to groups and subgroups are no longer required
	-- Hence the following code is not useful rather can cause issues
	-- manually assign vegetable group to legumes -- beans and peas
	update [usda_subgroups_map_food_to_groups_sub_groups]
	set group_id = 4 , sub_group_id=6, group_name = 'Vegetables'
	where group_id = 4 and sub_group_id=4

	--nuts
	select * from [usda_subgroups_map_food_to_groups_sub_groups]
	where group_id = 4 and sub_group_id=15

	update [usda_subgroups_map_food_to_groups_sub_groups]
	set group_name = 'Protein'
	where group_id = 4 and sub_group_id=15

	---missing groups and subgroups
	select * 
	from [usda_subgroups_map_food_to_groups_sub_groups]
	where subgroup_name is  null
	order by sub_group_id --desc

	--manually assign food subgroups

	/*
		●	99991400: cheese as an ingredient in sandwich : is assigned under solid fat subgroup
		●	99998 : Assigned to oils
		○	99998130	sauce as ingredient in hamburg
		○	99998210	industrial oil as ingredient

		●	99995: assigned to whole grain
		○	99995000	breading or batter as ingredie
		○	99995130	wheat bread as an ingredient in s

	*/


	update [usda_subgroups_map_food_to_groups_sub_groups]
	set sub_group_id = 81, subgroup_name='Fats'
	where usda_food_code = 99991400

	update [usda_subgroups_map_food_to_groups_sub_groups]
	set sub_group_id = 82, subgroup_name='Oils'
	where usda_food_code = 99998210

	update [usda_subgroups_map_food_to_groups_sub_groups]
	set sub_group_id = 51, subgroup_name='Yeast breads, rolls'
	where usda_food_code = 99995130

	update [usda_subgroups_map_food_to_groups_sub_groups]
	set sub_group_id = 51, subgroup_name='Yeast breads, rolls'
	where usda_food_code = 99995000

	update [usda_subgroups_map_food_to_groups_sub_groups]
	set sub_group_id = 83, subgroup_name='Salad dressings'
	where usda_food_code = 99998130

	 





END
GO
