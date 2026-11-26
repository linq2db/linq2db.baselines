-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	ToDateTimeOffset(CAST([r].[Dto] AS DateTime2), N'+02:00')
FROM
	[ZonedRow] [r]

