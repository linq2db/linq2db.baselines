-- SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016
SELECT TOP (2)
	CAST([r].[Dto] AS Date)
FROM
	[ZonedRow] [r]

-- SqlServer.2016
SELECT DISTINCT TOP (2)
	CAST([g_1].[Dto] AS Date)
FROM
	[ZonedRow] [g_1]

