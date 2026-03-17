-- SqlServer.2017

DROP TABLE [AllType2CreateTest]

-- SqlServer.2017

CREATE TABLE [AllType2CreateTest]
(
	[ID]                     int                NOT NULL IDENTITY,
	[dateDataType]           date                   NULL,
	[datetimeoffsetDataType] datetimeoffset(7)      NULL,
	[datetime2DataType]      datetime2(7)           NULL,
	[timeDataType]           time(7)                NULL,
	[hierarchyidDataType]    hierarchyid            NULL,
	[geographyDataType]      geography              NULL,
	[geometryDataType]       geometry               NULL,

	CONSTRAINT [PK_AllType2CreateTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[dateDataType],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType],
	[t1].[timeDataType],
	[t1].[hierarchyidDataType],
	[t1].[geographyDataType],
	[t1].[geometryDataType]
FROM
	[AllType2CreateTest] [t1]

-- SqlServer.2017

DROP TABLE [AllType2CreateTest]

