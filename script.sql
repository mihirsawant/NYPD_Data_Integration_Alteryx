USE [NYPD]
GO
/****** Object:  Table [dbo].[Complain_Historical]    Script Date: 4/6/2020 10:14:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complain_Historical](
	[CMPLNT_NUM] [int] NOT NULL,
	[CMPLNT_FR_DT] [date] NULL,
	[CMPLNT_FR_TM] [date] NULL,
	[CMPLNT_TO_DT] [date] NULL,
	[CMPLNT_TO_TM] [date] NULL,
	[ADDR_PCT_CD] [varchar](80) NULL,
	[RPT_DT] [date] NULL,
	[KY_CD] [int] NULL,
	[OFNS_DESC] [varchar](80) NULL,
	[PD_CD] [int] NULL,
	[PD_DESC] [varchar](80) NULL,
	[CRM_ATPT_CPTD_CD] [varchar](80) NULL,
	[LAW_CAT_CD] [varchar](80) NULL,
	[BORO_NM] [varchar](80) NULL,
	[LOC_OF_OCCUR_DESC] [varchar](80) NULL,
	[PREM_TYP_DESC] [varchar](80) NULL,
	[JURIS_DESC] [varchar](80) NULL,
	[JURISDICTION_CODE] [int] NULL,
	[PARKS_NM] [varchar](80) NULL,
	[HADEVELOPT] [varchar](80) NULL,
	[HOUSING_PSA] [varchar](80) NULL,
	[X_COORD_CD] [int] NULL,
	[Y_COORD_CD] [int] NULL,
	[SUSP_AGE_GROUP] [varchar](10) NULL,
	[SUSP_RACE] [varchar](80) NULL,
	[SUSP_SEX] [varchar](5) NULL,
	[TRANSIT_DISTRICT] [varchar](80) NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[Lat_Lon] [varchar](80) NULL,
	[PATROL_BORO] [varchar](85) NULL,
	[STATION_NAME] [varchar](80) NULL,
	[VIC_AGE_GROUP] [varchar](80) NULL,
	[VIC_RACE] [varchar](80) NULL,
	[VIC_SEX] [varchar](5) NULL,
	[DI_PID] [varchar](20) NULL,
	[DI_Create_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CMPLNT_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incident_STG]    Script Date: 4/6/2020 10:14:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incident_STG](
	[INCIDENT_KEY] [int] NOT NULL,
	[OCCUR_DATE] [date] NULL,
	[OCCUR_TIME] [date] NULL,
	[BORO] [varchar](50) NULL,
	[PRECINCT] [int] NULL,
	[JURISDICTION_CODE] [int] NULL,
	[LOCATION_DESC] [varchar](80) NULL,
	[STATISTICAL_MURDER_FLAG] [varchar](50) NULL,
	[PERP_AGE_GROUP] [varchar](50) NULL,
	[PERP_SEX] [varchar](50) NULL,
	[PERP_RACE] [varchar](50) NULL,
	[VIC_AGE_GROUP] [varchar](50) NULL,
	[VIC_SEX] [varchar](50) NULL,
	[VIC_RACE] [varchar](50) NULL,
	[X_COORD_CD] [varchar](50) NULL,
	[Y_COORD_CD] [varchar](50) NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[DI_PID] [int] NULL,
	[DI_CREATE_DT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Summons_NYPD]    Script Date: 4/6/2020 10:14:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Summons_NYPD](
	[SUMMONS_KEY] [int] NOT NULL,
	[SUMMONS_DATE] [varchar](80) NULL,
	[OFFENSE_DESCRIPTION] [varchar](80) NULL,
	[LAW_SECTION_NUMBER] [varchar](50) NULL,
	[LAW_DESCRIPTION] [varchar](80) NULL,
	[SUMMONS_CATEGORY_TYPE] [varchar](50) NULL,
	[AGE_GROUP] [varchar](50) NULL,
	[SEX] [varchar](50) NULL,
	[RACE] [varchar](50) NULL,
	[JURISDICTION_CODE] [int] NULL,
	[BORO] [varchar](50) NULL,
	[PRECINCT_OF_OCCUR] [int] NULL,
	[X_COORDINATE_CD] [int] NULL,
	[Y_COORDINATE_CD] [int] NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[DI_PID] [int] NULL,
	[DI_CREATE_DT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SUMMONS_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
