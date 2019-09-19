USE [mrp_2015_2016_diet_esrd_mortality]
GO
/****** Object:  StoredProcedure [dbo].[remaining_multi_day_get_food_group_based_dietary_intake_by_participants]    Script Date: 2019-07-03 12:02:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[remaining_multi_day_get_food_group_based_dietary_intake_by_participants]
AS
BEGIN
    -- This is important. Get data based on Group Based. Shift recommendation article used.

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;


	--combine multi day data into one table
	--drop table [2015-2016-multi-day-dietary-interview-individual-foods-DR2IFF_I]
	truncate table [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I]

	insert into [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I] 
	select *, 1
	from [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I]

	union all 
	
	select *, 2
	from [2015-2016-dietary-interview-individual-foods-2nd-day-DR2IFF_I]

	---------------

	-- see the output from combining
	select top(10) * 
	from [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I] 
	order by [day] desc 
	--where [day] = 2
	

	-- EXPLORATION
	-- Insert statements for procedure here
	select 
	demo.[SEQN - Respondent sequence number] as participant_id
	, [day]
	, demo.[RIDAGEYR - Age in years at screening] as age
	, food_code.[DRXFCLD] as food_taken
	, map.group_id
	, map.food_name
	--, map.group_name
	, recom.food_group_name
	, [DR1IGRMS - Grams] as food_weight_in_gms
	, [DR1IFDCD - USDA food code] as usda_food_code
	--, diet.*
	from [2015-2016-demographics_data] demo
	--inner join [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I]  diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-support-food-codes-DRXFCD_I] food_code on food_code.[DRXFDCD] = diet.[DR1IFDCD - USDA food code]
	inner join map_food_to_groups_sub_groups map on map.usda_food_code = diet.[DR1IFDCD - USDA food code]	
	inner join food_groups_shift_recommendation recom on recom.id = map.group_id
	order by participant_id,  group_id


	-- GET amount in gms taken by groups
	select top (1000) 
	max(demo.[SEQN - Respondent sequence number]) as participant_id
	, [day]
	, max(demo.[RIDAGEYR - Age in years at screening]) as age
	--, food_code.[DRXFCLD] as food_taken
	,max(map.group_id) as food_group_id

	, max(map.food_name) as food_name_a_sample
	--, max(map.group_name) as food_group_name
	, max(recom.food_group_name) as food_group_name

	, sum([DR1IGRMS - Grams]) as food_weight_in_gms
	--, [DR1IFDCD - USDA food code] as usda_food_code
	--, diet.*
	from [2015-2016-demographics_data] demo
	--inner join [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I] diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-support-food-codes-DRXFCD_I] food_code on food_code.[DRXFDCD] = diet.[DR1IFDCD - USDA food code]
	inner join map_food_to_groups_sub_groups map on map.usda_food_code = diet.[DR1IFDCD - USDA food code]
	--left join age_groups on demo.[RIDAGEYR - Age in years at screening]  <= age_groups.[to] and (demo.[RIDAGEYR - Age in years at screening]  >= age_groups.[from]) 
	inner join food_groups_shift_recommendation recom on recom.id = map.group_id
	group by demo.[SEQN - Respondent sequence number], [day], group_id
	order by demo.[SEQN - Respondent sequence number], [day]

	-- 
	drop table #multi_day_total_taken_closer_look

	select
	count(distinct(demo.[SEQN - Respondent sequence number])) as no_of_participants
	, [day]
	,min(demo.[RIDAGEYR - Age in years at screening]) as min_age_for_group
	,max(demo.[RIDAGEYR - Age in years at screening]) as max_age_for_group
	,min(age_groups_remaining.id) as age_group_id
	--max(demo.[SEQN - Respondent sequence number]) as participant_id
	, max(demo.[RIDAGEYR - Age in years at screening]) as age
	--, food_code.[DRXFCLD] as food_taken
	,max(map.group_id) as food_group_id
	--, max(map.group_name) as food_group_name
	, max(recom.food_group_name) as food_group_name
	, sum([DR1IGRMS - Grams]) as food_weight_in_gms
	--, [DR1IFDCD - USDA food code] as usda_food_code
	--, diet.*
	into #multi_day_total_taken_closer_look
	from [2015-2016-demographics_data] demo
	--inner join [2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-multi-day-dietary-interview-individual-foods-DR1IFF_I]  diet on demo.[SEQN - Respondent sequence number] = diet.[SEQN - Respondent sequence number]
	inner join [2015-2016-support-food-codes-DRXFCD_I] food_code on food_code.[DRXFDCD] = diet.[DR1IFDCD - USDA food code]
	inner join map_food_to_groups_sub_groups map on map.usda_food_code = diet.[DR1IFDCD - USDA food code]
	inner join food_groups_shift_recommendation recom on recom.id = map.group_id
	left join age_groups_remaining on demo.[RIDAGEYR - Age in years at screening]  <= age_groups_remaining.[to] and (demo.[RIDAGEYR - Age in years at screening]  >= age_groups_remaining.[from]) 
	--group by demo.[SEQN - Respondent sequence number], group_id
	--order by demo.[SEQN - Respondent sequence number]
	group by age_groups_remaining.id, [day], map.group_id
	order by age_group_id, [day]

	-- test the output from previous
	select
	no_of_participants
	, [day]
	,min_age_for_group
	,max_age_for_group
	,age_group_id			
	,food_group_id
	,food_group_name
	--,food_group_name_
	,food_weight_in_gms as sum_taken_in_gms
	,round(food_weight_in_gms/no_of_participants,2) as avg_taken_in_gms
	
	from #multi_day_total_taken_closer_look	
	order by age_group_id, food_group_id

	-- sum using both days
	select
	sum(no_of_participants) as total_participants
	--, max([day])
	,min(min_age_for_group) as min_age_group 
	,max(max_age_for_group) as max_age_for_group
	,max(age_group_id) as age_group_id
	,max(food_group_id) as food_group_id
	,max(food_group_name) as food_group_name
	--,food_group_name_
	,sum(food_weight_in_gms) as sum_taken_in_gms
	,round( sum(food_weight_in_gms)/sum(no_of_participants),2 )  as avg_taken_in_gms	
	from #multi_day_total_taken_closer_look	
	group by age_group_id, food_group_id
	order by age_group_id, food_group_id

	-- sum using both days -- Group Differently
	select
	sum(no_of_participants) as total_participants
	--, max([day])
	,min(min_age_for_group) as min_age_group 
	,max(max_age_for_group) as max_age_for_group
	,max(age_group_id) as age_group_id
	,max(food_group_id) as food_group_id
	,max(food_group_name) as food_group_name
	--,food_group_name_
	,sum(food_weight_in_gms) as sum_taken_in_gms
	,round( sum(food_weight_in_gms)/sum(no_of_participants),2 )  as avg_taken_in_gms	
	from #multi_day_total_taken_closer_look	
	group by age_group_id, food_group_id
	order by food_group_id, age_group_id

	
END

GO
