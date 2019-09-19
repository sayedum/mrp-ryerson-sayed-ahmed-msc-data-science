USE [mrp_2015_2016_diet_esrd_mortality]
GO
/****** Object:  StoredProcedure [dbo].[check_participants_in_multi_day_data]    Script Date: 2019-07-03 12:02:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[check_participants_in_multi_day_data]
AS
BEGIN
    -- important: to check if participants from day1 survey exist in day2 survey
	select distinct([SEQN - Respondent sequence number])
	FROM [mrp_2015_2016_diet_esrd_mortality].[dbo].[2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] f
	where f.[SEQN - Respondent sequence number] in 
	(
	select distinct([SEQN - Respondent sequence number])
	FROM [mrp_2015_2016_diet_esrd_mortality].[dbo].[2015-2016-dietary-interview-individual-foods-2nd-day-DR2IFF_I]
	)

	select distinct([SEQN - Respondent sequence number])
	FROM [mrp_2015_2016_diet_esrd_mortality].[dbo].[2015-2016-dietary-interview-individual-foods-first-day-DR1IFF_I] f
	where f.[SEQN - Respondent sequence number] not in 
	(
	select distinct([SEQN - Respondent sequence number])
	FROM [mrp_2015_2016_diet_esrd_mortality].[dbo].[2015-2016-dietary-interview-individual-foods-2nd-day-DR2IFF_I]
	)

END
GO
