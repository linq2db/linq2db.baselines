-- SqlServer.2017
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2017
SELECT TOP (2)
	CAST([r].[Dto] AS DateTime2)
FROM
	[ZonedRow] [r]

-- SqlServer.2017
SELECT TOP (2)
	CAST(([r].[Dto] AT TIME ZONE N'UTC') AS DateTime2)
FROM
	[ZonedRow] [r]

