-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000
FROM
	[ZonedRow] [r]

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	DatePart(tz, [r].[Dto])
FROM
	[ZonedRow] [r]

