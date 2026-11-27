-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	DatePart(tz, [r].[Dto])
FROM
	[ZonedRow] [r]

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000
FROM
	[ZonedRow] [r]

