-- SqlServer.2025
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2025
SELECT TOP (2)
	ToDateTimeOffset(CAST([r].[Dto] AS DateTime2), N'-01:30')
FROM
	[ZonedRow] [r]

