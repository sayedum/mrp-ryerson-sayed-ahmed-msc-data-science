USE [mrp_experiment_phase_data_process]
GO
/****** Object:  Table [dbo].[2015-2016-examinations-kidney-condition-KIQ_U_I]    Script Date: 2019-07-17 5:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[2015-2016-examinations-kidney-condition-KIQ_U_I](
	[SEQN - Respondent sequence number] [float] NULL,
	[KIQ022 - Ever told you had weak/failing kidneys] [float] NULL,
	[KIQ025 - Received dialysis in past 12 months] [nvarchar](255) NULL,
	[KIQ026 - Ever had kidney stones?] [float] NULL,
	[KIQ029 - Pass kidney stone in past 12 months?] [nvarchar](255) NULL,
	[KIQ005 - How often have urinary leakage] [float] NULL,
	[KIQ010 - How much urine lose each time?] [nvarchar](255) NULL,
	[KIQ042 - Leak urine during physical activities] [float] NULL,
	[KIQ430 - How frequently does this occur?] [nvarchar](255) NULL,
	[KIQ044 - Urinated before reaching the toilet] [float] NULL,
	[KIQ450 - How frequently does this occur?] [nvarchar](255) NULL,
	[KIQ046 - Leak urine during nonphysical activities] [float] NULL,
	[KIQ470 - How frequently does this occur?] [nvarchar](255) NULL,
	[KIQ048A - CHECK ITEM] [nvarchar](255) NULL,
	[KIQ050 - How much did urine leakage bother you] [nvarchar](255) NULL,
	[KIQ052 - How much were daily activities affected] [float] NULL,
	[KIQ480 - How many times urinate in night?] [nvarchar](255) NULL
) ON [PRIMARY]
GO
