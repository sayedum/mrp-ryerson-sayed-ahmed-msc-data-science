USE [mrp_experiment_phase_data_process]
GO
/****** Object:  StoredProcedure [dbo].[find_recommended_amounts_for_food_groups]    Script Date: 2019-07-17 5:28:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[find_recommended_amounts_for_food_groups]
AS
BEGIN
	

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [age]
      ,[food_group]
      ,[average_taken]
      ,[recommended_low]
      ,[recommended_high]
  FROM [mrp_experiment_phase_data_process].[dbo].[age_food_group_recommended_amount]
  where age in ( select '1' union select age_groups.[from] from age_groups)
  --and food_group in ('Fats, oils, and salad dressings', 'Sugars, sweets, and beverages')
  and food_group in ('protein')
  --where food_group in ( 'Sugars, sweets, and beverages')
  order by food_group

  --select * from age_groups



END
GO
