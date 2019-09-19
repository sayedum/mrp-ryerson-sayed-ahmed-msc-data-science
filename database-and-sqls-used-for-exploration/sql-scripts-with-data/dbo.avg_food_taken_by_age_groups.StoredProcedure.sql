USE [mrp_2015_2016_diet_esrd_mortality]
GO
/****** Object:  StoredProcedure [dbo].[avg_food_taken_by_age_groups]    Script Date: 2019-07-03 12:02:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[avg_food_taken_by_age_groups]
AS
BEGIN	

	-- Food groups/subgroups are NOT based on Shift Recommendation

	select * 
	from [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I]

	select *
	from [2015-2016-dietary-nutrients-intake-first-day-DR1TOT_I]

	--use [mrp_2015_2016_diet_esrd_mortality]
	drop table #total_food_taken_by_age_groups
	-- EXPLORATION
	-- Insert statements for procedure here
	--insert into #total_food_taken_by_age_groups
	select
	--max(demo.[SEQN - Respondent sequence number]) as participant_id
	count(distinct(demo.[SEQN - Respondent sequence number])) as no_of_participants
	,min(demo.[RIDAGEYR - Age in years at screening]) as min_age_for_group
	,max(demo.[RIDAGEYR - Age in years at screening]) as max_age_for_group
	,min(age_groups.id) as age_group_id
	, sum ([WTDRD1 - Dietary day one sample weight]) as day_1_total_weight
	, sum ([WTDR2D - Dietary two-day sample weight]) as day_2_total_weight
	, sum([DRDINT - Number of days of intake]) as days_of_intake
	, sum([DR1IGRMS - Grams]) as food_taken_in_gms
	--, food_code.[DRXFCLD]
	,sum(diet.[DR1IKCAL - Energy (kcal)]) as total_calory
	,sum(diet.[DR1IPROT - Protein (gm)]) as total_protein
	, sum ( diet.[DR1ICARB - Carbohydrate (gm)]  ) as total_carbohydrate
	
	
	, sum (  diet.[DR1ISUGR - Total sugars (gm)] ) as total_sugar
	, sum (  diet.[DR1IFIBE - Dietary fiber (gm)] ) as total_fibre
	, sum ( diet.[DR1ITFAT - Total fat (gm)] ) as total_fat
	, sum ( diet.[DR1ISFAT - Total saturated fatty acids (gm)]) as total_saturated_fat
	,sum ( diet.[DR1IMFAT - Total monounsaturated fatty acids (gm)]) as total_mono_fat
	,sum ( diet.[DR1IPFAT - Total polyunsaturated fatty acids (gm)]) as total_poly_fat
	,sum ( diet.[DR1ICHOL - Cholesterol (mg)]) as total_cholesterol
	,sum ( diet.[DR1ICALC - Calcium (mg)]) as total_calcium
	,sum ( diet.[DR1IPHOS - Phosphorus (mg)]) as total_phosphorous
	,sum ( diet.[DR1IMAGN - Magnesium (mg)]) as total_magnesium
	, sum(diet.[DR1ISODI - Sodium (mg)]) as total_sodium
	,sum ( diet.[DR1IPOTA - Potassium (mg)]) as total_potassium
	,sum ( diet.[DR1IALCO - Alcohol (gm)]) as total_alcohol
	--, diet.*
	into #total_food_taken_by_age_groups
	from [2015-2016-demographics_data] demo
	inner join [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	left join [2015-2016-support-food-codes-DRXFCD_I] food_code on food_code.[DRXFDCD] = diet.[DR1IFDCD - USDA food code]
	--left join age_groups on demo.[RIDAGEYR - Age in years at screening]  <= age_groups.[to] 
	left join age_groups on demo.[RIDAGEYR - Age in years at screening]  <= age_groups.[to] and (demo.[RIDAGEYR - Age in years at screening]  >= age_groups.[from]) 

	--group by diet.[SEQN - Respondent sequence number]
	group by age_groups.id
	--having age_groups.id <= 1
	order by age_group_id

	select 
	age_group_id
	,min_age_for_group
	,max_age_for_group

	, round(day_1_total_weight/no_of_participants,2) as avg_weight_day_1
	, round(day_2_total_weight/no_of_participants,2) as avg_weight_day_2
	, round(days_of_intake/no_of_participants,2) as avg_days_taken
	, round(food_taken_in_gms/no_of_participants,2) as avg_food_taken

	,round(total_calory/no_of_participants,2) as avg_calory
	,round(total_protein/no_of_participants,2) as avg_protein
	,round(total_sodium/no_of_participants,2) as avg_sodium
	,round(total_carbohydrate/no_of_participants,2) as avg_carbohydrate
	,round(total_sugar/no_of_participants,2) as avg_sugar
	,round(total_fibre/no_of_participants,2) as avg_fibre
	,round(total_fat/no_of_participants,2) as avg_fat
	,round(total_saturated_fat/no_of_participants,2) as avg_saturated_fat
	,round(total_mono_fat/no_of_participants,2) as avg_mono_fat
	,round(total_poly_fat/no_of_participants,2) as avg_poly_fat
	,round(total_cholesterol/no_of_participants,2) as avg_cholesterol
	,round(total_calcium/no_of_participants,2) as avg_calcium
	,round(total_phosphorous/no_of_participants,2) as avg_phosphorous
	,round(total_magnesium/no_of_participants,2) as avg_magnesium
	,round(total_potassium/no_of_participants,2) as avg_potassium
	,round(total_alcohol/no_of_participants,2) as avg_alcohol
	from #total_food_taken_by_age_groups
	order by age_group_id


END
GO
