USE [mrp_2015_2016_diet_esrd_mortality]
GO
/****** Object:  StoredProcedure [dbo].[regroup_ages_food_intake_recommendations]    Script Date: 2019-07-03 12:02:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[regroup_ages_food_intake_recommendations]
AS
BEGIN
	
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT min(age_groups.[from]) as age_from, max(age_groups.[to]) as age_to
--, sum(protein_from) as protein_from
,sum([vegetables_from])/(age_groups.[to] - age_groups.[from]) as [vegetables_from]
,sum([vegetables_to])/(age_groups.[to] - age_groups.[from] + 1) as [vegetables_to]
,sum([protein_from])/(age_groups.[to] - age_groups.[from] + 1) as [protein_from]
,sum([protein_to])/(age_groups.[to] - age_groups.[from] + 1) as [protein_to]
,sum([dairy_from])/(age_groups.[to] - age_groups.[from] + 1) as [dairy_from]
,sum([dairy_to])/(age_groups.[to] - age_groups.[from] + 1) as [dairy_to]
,sum([fruits_from])/(age_groups.[to] - age_groups.[from] + 1) as [fruits_from]
,sum([fruits_to])/(age_groups.[to] - age_groups.[from] + 1) as [fruits_to]
,sum([grains_from])/(age_groups.[to] - age_groups.[from] + 1) as [grains_from]
,sum([grains_to])/(age_groups.[to] - age_groups.[from] + 1) as [grains_to]


FROM [mrp_2015_2016_diet_esrd_mortality].[dbo].age_groups 
inner join [recommended_for_each_age] age_recom on age_recom.age_from  <= age_groups.[to] and (age_recom.age_from  >= age_groups.[from]) 
group by age_groups.[from], age_groups.[to]

END
GO
