-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	CAST([r].[Dto] AS DateTime2)
FROM
	[ZonedRow] [r]

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	CAST(([r].[Dto] AT TIME ZONE N'UTC') AS DateTime2)
FROM
	[ZonedRow] [r]

