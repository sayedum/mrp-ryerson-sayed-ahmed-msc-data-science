USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[multi-day-2015-2016-dietary-nutrients-intake]    Script Date: 2019-07-17 5:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[multi-day-2015-2016-dietary-nutrients-intake](
	[SEQN - Respondent sequence number] [float] NULL,
	[WTDRD1 - Dietary day one sample weight] [float] NULL,
	[WTDR2D - Dietary two-day sample weight] [float] NULL,
	[DR1DRSTZ - Dietary recall status] [float] NULL,
	[DR1EXMER - Interviewer ID code] [float] NULL,
	[DRABF - Breast-fed infant (either day)] [float] NULL,
	[DRDINT - Number of days of intake] [float] NULL,
	[DR1DBIH - # of days b/w intake and HH interview] [float] NULL,
	[DR1DAY - Intake day of the week] [float] NULL,
	[DR1LANG - Language respondent used mostly] [float] NULL,
	[DR1MRESP - Main respondent for this interview] [float] NULL,
	[DR1HELP - Helped in responding for this interview] [float] NULL,
	[DR1TNUMF - Number of foods/beverages reported] [float] NULL,
	[DR1STY - Salt used at table yesterday?] [float] NULL,
	[DR1SKY - Type of salt used yesterday] [nvarchar](255) NULL,
	[DR1TKCAL - Energy (kcal)] [float] NULL,
	[DR1TPROT - Protein (gm)] [float] NULL,
	[DR1TCARB - Carbohydrate (gm)] [float] NULL,
	[DR1TSUGR - Total sugars (gm)] [float] NULL,
	[DR1TFIBE - Dietary fiber (gm)] [float] NULL,
	[DR1TTFAT - Total fat (gm)] [float] NULL,
	[DR1TSFAT - Total saturated fatty acids (gm)] [float] NULL,
	[DR1TMFAT - Total monounsaturated fatty acids (gm)] [float] NULL,
	[DR1TPFAT - Total polyunsaturated fatty acids (gm)] [float] NULL,
	[DR1TCHOL - Cholesterol (mg)] [float] NULL,
	[DR1TATOC - Vitamin E as alpha-tocopherol (mg)] [float] NULL,
	[DR1TATOA - Added alpha-tocopherol (Vitamin E) (mg)] [float] NULL,
	[DR1TRET - Retinol (mcg)] [float] NULL,
	[DR1TVARA - Vitamin A, RAE (mcg)] [float] NULL,
	[DR1TACAR - Alpha-carotene (mcg)] [float] NULL,
	[DR1TBCAR - Beta-carotene (mcg)] [float] NULL,
	[DR1TCRYP - Beta-cryptoxanthin (mcg)] [float] NULL,
	[DR1TLYCO - Lycopene (mcg)] [float] NULL,
	[DR1TLZ - Lutein + zeaxanthin (mcg)] [float] NULL,
	[DR1TVB1 - Thiamin (Vitamin B1) (mg)] [float] NULL,
	[DR1TVB2 - Riboflavin (Vitamin B2) (mg)] [float] NULL,
	[DR1TNIAC - Niacin (mg)] [float] NULL,
	[DR1TVB6 - Vitamin B6 (mg)] [float] NULL,
	[DR1TFOLA - Total folate (mcg)] [float] NULL,
	[DR1TFA - Folic acid (mcg)] [float] NULL,
	[DR1TFF - Food folate (mcg)] [float] NULL,
	[DR1TFDFE - Folate, DFE (mcg)] [float] NULL,
	[DR1TCHL - Total choline (mg)] [float] NULL,
	[DR1TVB12 - Vitamin B12 (mcg)] [float] NULL,
	[DR1TB12A - Added vitamin B12 (mcg)] [float] NULL,
	[DR1TVC - Vitamin C (mg)] [float] NULL,
	[DR1TVD - Vitamin D (D2 + D3) (mcg)] [float] NULL,
	[DR1TVK - Vitamin K (mcg)] [float] NULL,
	[DR1TCALC - Calcium (mg)] [float] NULL,
	[DR1TPHOS - Phosphorus (mg)] [float] NULL,
	[DR1TMAGN - Magnesium (mg)] [float] NULL,
	[DR1TIRON - Iron (mg)] [float] NULL,
	[DR1TZINC - Zinc (mg)] [float] NULL,
	[DR1TCOPP - Copper (mg)] [float] NULL,
	[DR1TSODI - Sodium (mg)] [float] NULL,
	[DR1TPOTA - Potassium (mg)] [float] NULL,
	[DR1TSELE - Selenium (mcg)] [float] NULL,
	[DR1TCAFF - Caffeine (mg)] [float] NULL,
	[DR1TTHEO - Theobromine (mg)] [float] NULL,
	[DR1TALCO - Alcohol (gm)] [float] NULL,
	[DR1TMOIS - Moisture (gm)] [float] NULL,
	[DR1TS040 - SFA 4:0 (Butanoic) (gm)] [float] NULL,
	[DR1TS060 - SFA 6:0 (Hexanoic) (gm)] [float] NULL,
	[DR1TS080 - SFA 8:0 (Octanoic) (gm)] [float] NULL,
	[DR1TS100 - SFA 10:0 (Decanoic) (gm)] [float] NULL,
	[DR1TS120 - SFA 12:0 (Dodecanoic) (gm)] [float] NULL,
	[DR1TS140 - SFA 14:0 (Tetradecanoic) (gm)] [float] NULL,
	[DR1TS160 - SFA 16:0 (Hexadecanoic) (gm)] [float] NULL,
	[DR1TS180 - SFA 18:0 (Octadecanoic) (gm)] [float] NULL,
	[DR1TM161 - MFA 16:1 (Hexadecenoic) (gm)] [float] NULL,
	[DR1TM181 - MFA 18:1 (Octadecenoic) (gm)] [float] NULL,
	[DR1TM201 - MFA 20:1 (Eicosenoic) (gm)] [float] NULL,
	[DR1TM221 - MFA 22:1 (Docosenoic) (gm)] [float] NULL,
	[DR1TP182 - PFA 18:2 (Octadecadienoic) (gm)] [float] NULL,
	[DR1TP183 - PFA 18:3 (Octadecatrienoic) (gm)] [float] NULL,
	[DR1TP184 - PFA 18:4 (Octadecatetraenoic) (gm)] [float] NULL,
	[DR1TP204 - PFA 20:4 (Eicosatetraenoic) (gm)] [float] NULL,
	[DR1TP205 - PFA 20:5 (Eicosapentaenoic) (gm)] [float] NULL,
	[DR1TP225 - PFA 22:5 (Docosapentaenoic) (gm)] [float] NULL,
	[DR1TP226 - PFA 22:6 (Docosahexaenoic) (gm)] [float] NULL,
	[DR1_300 - Compare food consumed yesterday to usual] [float] NULL,
	[DR1_320Z - Total plain water drank yesterday (gm)] [float] NULL,
	[DR1_330Z - Total tap water drank yesterday (gm)] [float] NULL,
	[DR1BWATZ - Total bottled water drank yesterday (gm)] [float] NULL,
	[DR1TWS - Tap water source] [float] NULL,
	[day] [varchar](1) NOT NULL,
	[session_period] [varchar](9) NOT NULL,
	[session_start] [varchar](4) NOT NULL,
	[session_end] [varchar](4) NOT NULL
) ON [PRIMARY]
GO
