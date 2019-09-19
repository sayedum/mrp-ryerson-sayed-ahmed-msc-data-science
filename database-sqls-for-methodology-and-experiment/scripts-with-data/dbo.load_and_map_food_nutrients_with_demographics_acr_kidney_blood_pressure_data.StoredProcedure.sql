USE [mrp_experiment_phase_data_process]
GO
/****** Object:  StoredProcedure [dbo].[load_and_map_food_nutrients_with_demographics_acr_kidney_blood_pressure_data]    Script Date: 2019-07-17 5:51:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Sayed Ahmed>
-- Create date: <June-July, 2019>

-- =============================================
CREATE PROCEDURE [dbo].[load_and_map_food_nutrients_with_demographics_acr_kidney_blood_pressure_data]
AS
BEGIN
	-- table [multi-day-2015-2016-dietary-nutrients-intake] is created in another stored procedure
    select top(10) *
	from [multi-day-2015-2016-dietary-nutrients-intake]

	-- result: 19088  i.e. 2 * 9544 each day had 9544 rows
	select count(*)
	from [multi-day-2015-2016-dietary-nutrients-intake]

	---------------------------Data Consolidation-------------------------------------------
	--Option 1: --combine individual nutrient intake data with demographics data ------
	--this data might miss ACR information for some participants; hence, will not use this data as is

	-- combine nutrient intake -- demographics -- ACR -- kidney condition -- blood pressure -- data
	-- not filtering out any data/participants irrespective ACR or Kidney or Blood pressure is there or not
	-- demographics information is a must
	-- produces 19088 rows	 i.e. all rows from dietary nutrient intake tables are retained

	select *
	--into #[nhanes-xlsx-data-1999-2016-demographics-nutrient-taken-nutrients-blood-pressure-albumin-creatinine]
	from [multi-day-2015-2016-dietary-nutrients-intake] survey	
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	left join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]
		
	-- Option 2: -- combine nutrient item intake -- demographics -- ACR -- kidney condition -- blood pressure -- data
	--- THIS data can be seen as the most relevant for the analysis as ACR data is must
	-- keep data/participants that have ACR : i.e. ACR is a must: demographics must have
	-- produces 202758 rows of data

	-- used this to make sure ACR data is there: and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )

	--not important
	truncate table  nutrient_demo_acr_must_kidney_blood_optional

	-- result: 16560 rows
	select  *
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number] and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	left join [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]

	-- Option 3 -- combine nutrient intake -- demographics -- ACR -- kidney condition -- blood pressure -- data
	-- keep data that has ACR and kidney data : i.e. ACR and kidney data must : demographics also must
	--kidney data must: kidney related table has rows for the participant irrespective the values for the fields
	-- produces 10694 rows of data

	--result: 10948 rows
	-- used and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	select *
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number] and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	inner join [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]


	--Option 4
	-- combine nutrient intake -- demographics -- ACR -- kidney condition -- blood pressure -- data
	-- keep data that has ACR and kidney data : i.e. ACR and kidney data must : demographics also must : blood pressure data must
	-- produces 10694 rows of data
	-- probably generates the same data like above

	--result : 10694 rows
	--used and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	select *
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number] and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	inner join [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	inner join [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]

	-- Option 2: can be seen as the most appropriate. ACR can be the primary measure for CKD, 
	--Kidney condition data might not say much for CKD though may indicate/say about kidney damage (doctors might need to be asked)
	-- Combine nutrient intake -- demographics -- ACR -- kidney condition -- blood pressure -- data
	-- Keep data that has ACR : i.e. ACR is a must: demographics must have
	-- Produces 16560 rows of data

	---------------------------End Data Consolidation-------Option 2 from above is the most important------------------------------------
	--option 2 query from above
	select  top(10) *	
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number] and (acr.[URDACT - Albumin creatinine ratio (mg/g)] > 0 )
	left join [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]

	-- Explore Data : not a very important section
	-- all columns
	select top(10)
	demo.[SEQN - Respondent sequence number]
	, demo.[RIDAGEYR - Age in years at screening] as participant_age
	, acr.*
	, kidney.*
	, blood.*
	, demo.*
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]
	order by demo.[SEQN - Respondent sequence number], [day]

	

	--Explore data -- just trying to find out the most relevant columns
	-- important columns esp for ACR and Kidney
	-- still not that important query
	-- test output: for phosphorous and for: 83732
	-- day 1: 1052
	-- day 2: 1880
	---average in next queries need to be:
	--select (1052 + 1880)/2 = 1466

	select top(1000)
	demo.[SEQN - Respondent sequence number]
	,demo.[RIDAGEYR - Age in years at screening] as participant_age
	,demo.[RIAGENDR - Gender]	
	,[day]	
	,acr.[URDACT - Albumin creatinine ratio (mg/g)]	as acr
	,kidney.[KIQ022 - Ever told you had weak/failing kidneys] as kidney_failed
	,blood.[BPXSY1 - Systolic: Blood pres (1st rdg) mm Hg] as systolic_pressure
	,blood.[BPXDI1 - Diastolic: Blood pres (1st rdg) mm Hg] as diastolic_pressure	
	,survey.*
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]
	where demo.[SEQN - Respondent sequence number] = 83732
	order by demo.[SEQN - Respondent sequence number], survey.[day]


	--- create a temporary table with important columns, and calculating averages for nutrient items
	-- important columns
	--average of intake amount

	--drop table #albumin_creatinine_and_demographics
	drop table temp_albumin_creatinine_and_demographics_nutrients

	--result:  8608 rows
	select 
	max(demo.[SEQN - Respondent sequence number]) as participant_id
	,max(demo.[RIDAGEYR - Age in years at screening]) as participant_age
	,avg(acr.[URDACT - Albumin creatinine ratio (mg/g)]) as acr
	,max(kidney.[KIQ022 - Ever told you had weak/failing kidneys]) as kidney_failed
	,avg(blood.[BPXSY1 - Systolic: Blood pres (1st rdg) mm Hg]) as systolic_pressure
	,avg(blood.[BPXDI1 - Diastolic: Blood pres (1st rdg) mm Hg]) as diastolic_pressure
	,max(demo.[RIAGENDR - Gender]) as gender
	,avg(survey.[DR1TKCAL - Energy (kcal)]) as avg_energy_kcal
    ,avg(survey.[DR1TPROT - Protein (gm)]) as avg_protein_gm
    ,avg(survey.[DR1TCARB - Carbohydrate (gm)]) as avg_carbohydrate_gm
    ,avg(survey.[DR1TSUGR - Total sugars (gm)]) as avg_total_sugars
    ,avg(survey.[DR1TFIBE - Dietary fiber (gm)]) as avg_dietary_fiber_gm
    ,avg(survey.[DR1TTFAT - Total fat (gm)]) as avg_total_fat_gm
    ,avg(survey.[DR1TSFAT - Total saturated fatty acids (gm)]) as avg_total_saturated_fatty_acids_gm
    ,avg(survey.[DR1TMFAT - Total monounsaturated fatty acids (gm)]) as avg_total_monounsaturated_fatty_acids_gm
    ,avg(survey.[DR1TPFAT - Total polyunsaturated fatty acids (gm)]) as avg_total_polyunsaturated_fatty_acids_gm
    ,avg(survey.[DR1TCHOL - Cholesterol (mg)]) as avg_cholesterol_mg
    ,avg(survey.[DR1TATOC - Vitamin E as alpha-tocopherol (mg)]) as avg_vitamin_e_as_alpha_tocopherol_mg
    ,avg(survey.[DR1TATOA - Added alpha-tocopherol (Vitamin E) (mg)]) as avg_added_alpha_tocopherol_vitamin_E_mg
    ,avg(survey.[DR1TRET - Retinol (mcg)]) as retinol_mcg
    ,avg(survey.[DR1TVARA - Vitamin A, RAE (mcg)]) as avg_Vitamin_A_RAE_mcg
    ,avg(survey.[DR1TACAR - Alpha-carotene (mcg)]) as avg_Alpha_carotene_mcg
    ,avg(survey.[DR1TBCAR - Beta-carotene (mcg)]) as avg_beta_carotene_mcg
    ,avg(survey.[DR1TCRYP - Beta-cryptoxanthin (mcg)]) as avg_beta_cryptoxanthin_mcg
    ,avg(survey.[DR1TLYCO - Lycopene (mcg)]) as avg_lycopene_mcg
    ,avg(survey.[DR1TLZ - Lutein + zeaxanthin (mcg)]) as avg_lutein_zeaxanthin_mcg
    ,avg(survey.[DR1TVB1 - Thiamin (Vitamin B1) (mg)]) as avg_thiamin_vitamin_B1_mg
    ,avg(survey.[DR1TVB2 - Riboflavin (Vitamin B2) (mg)]) as avg_riboflavin_Vitamin_B2_mg
    ,avg(survey.[DR1TNIAC - Niacin (mg)]) as avg_Niacin_mg
    ,avg(survey.[DR1TVB6 - Vitamin B6 (mg)]) as avg_Vitamin_B6_mg
    ,avg(survey.[DR1TFOLA - Total folate (mcg)]) as avg_Total_folate_mcg
    ,avg(survey.[DR1TFA - Folic acid (mcg)]) as avg_Folic_acid_mcg
    ,avg(survey.[DR1TFF - Food folate (mcg)]) as avg_Food_folate_mcg
    ,avg(survey.[DR1TFDFE - Folate, DFE (mcg)]) as avg_Folate_DFE_mcg
    ,avg(survey.[DR1TCHL - Total choline (mg)]) as Total_choline_mg
    ,avg(survey.[DR1TVB12 - Vitamin B12 (mcg)]) as Vitamin_B12_mcg
    ,avg(survey.[DR1TB12A - Added vitamin B12 (mcg)]) as avg_Added_vitamin_B12_mcg
    ,avg(survey.[DR1TVC - Vitamin C (mg)]) as avg_Vitamin_C_mg
    ,avg(survey.[DR1TVD - Vitamin D (D2 + D3) (mcg)]) as avg_Vitamin_D_D2_D3_mcg
    ,avg(survey.[DR1TVK - Vitamin K (mcg)]) as avg_Vitamin_K_mcg
    ,avg(survey.[DR1TCALC - Calcium (mg)]) as avg_Calcium_mg
    ,avg(survey.[DR1TPHOS - Phosphorus (mg)]) as avg_Phosphorus_mg
    ,avg(survey.[DR1TMAGN - Magnesium (mg)]) as avg_Magnesium_mg
    ,avg(survey.[DR1TIRON - Iron (mg)]) as avg_Iron_mg
    ,avg(survey.[DR1TZINC - Zinc (mg)]) as avg_Zinc_mg
    ,avg(survey.[DR1TCOPP - Copper (mg)]) as avg_Copper_mg
    ,avg(survey.[DR1TSODI - Sodium (mg)]) as avg_Sodium_mg
    ,avg(survey.[DR1TPOTA - Potassium (mg)]) as avg_Potassium_mg
    ,avg(survey.[DR1TSELE - Selenium (mcg)]) as avg_Selenium_mcg
    ,avg(survey.[DR1TCAFF - Caffeine (mg)]) as avg_Caffeine_mg
    ,avg(survey.[DR1TTHEO - Theobromine (mg)]) as avg_Theobromine_mg
    ,avg(survey.[DR1TALCO - Alcohol (gm)]) as avg_Alcohol_gm
    ,avg(survey.[DR1TMOIS - Moisture (gm)]) as avg_Moisture_gm
    ,avg(survey.[DR1TS040 - SFA 4:0 (Butanoic) (gm)]) as Butanoic_gm
    ,avg(survey.[DR1TS060 - SFA 6:0 (Hexanoic) (gm)]) as Hexanoic_gm
    ,avg(survey.[DR1TS080 - SFA 8:0 (Octanoic) (gm)]) as Octanoic_gm
    ,avg(survey.[DR1TS100 - SFA 10:0 (Decanoic) (gm)]) as Decanoic_gm
    ,avg(survey.[DR1TS120 - SFA 12:0 (Dodecanoic) (gm)]) as Dodecanoic_gm
    ,avg(survey.[DR1TS140 - SFA 14:0 (Tetradecanoic) (gm)]) as Tetradecanoic_gm
    ,avg(survey.[DR1TS160 - SFA 16:0 (Hexadecanoic) (gm)]) as Hexadecanoic_gm
    ,avg(survey.[DR1TS180 - SFA 18:0 (Octadecanoic) (gm)]) as Octadecanoic_gm
    ,avg(survey.[DR1TM161 - MFA 16:1 (Hexadecenoic) (gm)]) as Hexadecenoic_gm
    ,avg(survey.[DR1TM181 - MFA 18:1 (Octadecenoic) (gm)]) as Octadecenoic_gm
    ,avg(survey.[DR1TM201 - MFA 20:1 (Eicosenoic) (gm)]) as Eicosenoic_gm
    ,avg(survey.[DR1TM221 - MFA 22:1 (Docosenoic) (gm)]) as Docosenoic_gm
    ,avg(survey.[DR1TP182 - PFA 18:2 (Octadecadienoic) (gm)]) as Octadecadienoic1_gm
    ,avg(survey.[DR1TP183 - PFA 18:3 (Octadecatrienoic) (gm)]) as Octadecatrienoic2_gm
    ,avg(survey.[DR1TP184 - PFA 18:4 (Octadecatetraenoic) (gm)]) as Octadecatetraenoic3_gm
    ,avg(survey.[DR1TP204 - PFA 20:4 (Eicosatetraenoic) (gm)]) as Eicosatetraenoic1_gm
    ,avg(survey.[DR1TP205 - PFA 20:5 (Eicosapentaenoic) (gm)]) as Eicosapentaenoic2_gm
    ,avg(survey.[DR1TP225 - PFA 22:5 (Docosapentaenoic) (gm)]) as Docosapentaenoic1_gm
    ,avg(survey.[DR1TP226 - PFA 22:6 (Docosahexaenoic) (gm)]) as Docosahexaenoic2_gm      
    ,avg(survey.[DR1_320Z - Total plain water drank yesterday (gm)]) as avg_Total_plain_water_drank_yesterday_gm
    ,avg(survey.[DR1_330Z - Total tap water drank yesterday (gm)]) as avg_Total_tap_water_drank_yesterday_gm
    ,avg(survey.[DR1BWATZ - Total bottled water drank yesterday (gm)]) as avg_Total_bottled_water_drank_yesterday_gm	
	,max(acr.[URXUMA - Albumin, urine (ug/mL)]) as albumin_urine_mu_g
	,max(acr.[URXUMS - Albumin, urine (mg/L)]) as albumin_urine_mg
	,max(acr.[URXCRS - Creatinine, urine (umol/L)]) as creatinine_mu_mol
	,max(acr.[URXUCR - Creatinine, urine (mg/dL)]) as creatinine_mg	
	,max(kidney.[KIQ025 - Received dialysis in past 12 months]) as received_dialysis_in_12_months
	,max(kidney.[KIQ026 - Ever had kidney stones?]) as kidney_stones
	,max(kidney.[KIQ029 - Pass kidney stone in past 12 months?]) as passed_kidney_stones_12_months			
	,max(kidney.[KIQ005 - How often have urinary leakage]) as urinary_leakage_frequency	
	,max(kidney.[KIQ010 - How much urine lose each time?]) as urine_lose_each_time	
	,max(kidney.[KIQ042 - Leak urine during physical activities]) as leak_during_activities	
	,max(kidney.[KIQ430 - How frequently does this occur?]) as how_frequent_leak_occurs	
	,max(kidney.[KIQ044 - Urinated before reaching the toilet]) as urinated_before_reaching_toilet	
	,max(kidney.[KIQ450 - How frequently does this occur?]) as how_frequent	
	,max(kidney.[KIQ046 - Leak urine during nonphysical activities]) as leak_during_nonphysical_activities	
	,max(kidney.[KIQ470 - How frequently does this occur?]) as how_frequest_leak_nonphysical	
	,max(kidney.[KIQ050 - How much did urine leakage bother you]) as how_much_leak_bothering
	,max(kidney.[KIQ052 - How much were daily activities affected]) as how_much_daily_activities_affected
	,max(kidney.[KIQ480 - How many times urinate in night?]) as count_night_time_urinate
	into temp_albumin_creatinine_and_demographics_nutrients
	from [multi-day-2015-2016-dietary-nutrients-intake] survey
	inner join [2015-2016-demographics_data] demo on demo.[SEQN - Respondent sequence number] = survey.[SEQN - Respondent sequence number]
	inner join [2015-2016-laboratory-albumin-creatinine-data-ALB_CR_I] acr on acr.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examinations-kidney-condition-KIQ_U_I] kidney on kidney.[SEQN - Respondent sequence number] = demo.[SEQN - Respondent sequence number]
	left join  [2015-2016-examination-blood-pressure-BPX_I] blood on demo.[SEQN - Respondent sequence number] = blood.[SEQN - Respondent sequence number]	
	group by demo.[SEQN - Respondent sequence number]
	order by demo.[SEQN - Respondent sequence number]

	
	--test

	select count(*)
	from temp_albumin_creatinine_and_demographics_nutrients
	--where participant_id = 83732
	--order by participant_id

	--The result is as pected i.e. averaging data over two days
	-- avg_Phosphorus_mg: 1466
	select *
	from temp_albumin_creatinine_and_demographics_nutrients
	where participant_id = 83732
	order by participant_id


	select *
	from temp_albumin_creatinine_and_demographics_nutrients

	select count(distinct(participant_id))
	from temp_albumin_creatinine_and_demographics_nutrients


	

END
GO
