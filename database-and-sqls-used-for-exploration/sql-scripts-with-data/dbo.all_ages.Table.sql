USE [mrp_2015_2016_diet_esrd_mortality]
GO
/****** Object:  Table [dbo].[all_ages]    Script Date: 2019-07-03 11:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[all_ages](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[from] [smallint] NOT NULL,
	[to] [smallint] NOT NULL
) ON [PRIMARY]
GO
