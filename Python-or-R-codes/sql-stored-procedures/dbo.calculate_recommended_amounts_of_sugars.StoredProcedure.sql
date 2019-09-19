USE [mrp_experiment_phase_data_process]
GO
/****** Object:  StoredProcedure [dbo].[calculate_recommended_amounts_of_sugars]    Script Date: 2019-07-17 5:28:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[calculate_recommended_amounts_of_sugars]
AS
BEGIN

	select 
	min(sugar.Age) as min_age_for_group
	,max(sugar.Age) as max_age_for_group
	,min(age_groups.id) as age_group_id
	, avg(sugar.[Recommended Gm]) as sugars_recommended
	, avg(sugar.[Recommended Low]) as sugars_recommended_low
	, avg(sugar.[Recommended High]) as sugars_recommended_high
	from recommended_sugar_intake_amount sugar
	--left join age_groups gr on sugar.Age >= age_groups.[from] and (sugar.Age <= age_groups.[to])
	left join age_groups on sugar.Age  <= age_groups.[to] and (sugar.Age  >= age_groups.[from]) 
	group by age_groups.id
	order by age_groups.id

	--Test
	select top(10) *
	from [age_food_group_recommended_amount]
	where food_group like 'vegetables'


	--Protein
	select 
	min(participant_age) as min_age_for_group
	,max(participant_age) as max_age_for_group
	,min(age_groups.id) as age_group_id
	--,avg(Vegetables) as vegetables

	,avg(Dairy) as 	avg_dairy
	,avg([Fats, oils, and salad dressings]) as avg_oils 	
	,avg(Fruits) as avg_fruits 	
	,avg(Grains) as avg_grains	
	,avg(Protein) as avg_protein 	
	,avg([Sugars, sweets, and beverages]) as 	avg_sugars
	,avg(Vegetables) as avg_vegetables


	--, avg([Recommended Low]) as sugars_recommended_low
	--, avg([Recommended High]) as sugars_recommended_high
	from [food_group_data_ready_for_excel_regression] food
	--left join age_groups gr on sugar.Age >= age_groups.[from] and (sugar.Age <= age_groups.[to])
	left join age_groups on (food.participant_age  <= age_groups.[to]) and (food.participant_age >= age_groups.[from]) 
	group by age_groups.id
	order by age_groups.id


	




END
GO
