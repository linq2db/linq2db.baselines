-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	DatePart(day, [r].[Dto]),
	DatePart(month, [r].[Dto]),
	DatePart(year, [r].[Dto]),
	DatePart(dayofyear, [r].[Dto])
FROM
	[ZonedRow] [r]

