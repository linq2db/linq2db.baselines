-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	DatePart(hour, [r].[Dto]),
	DatePart(hour, [r].[Dto]),
	DateAdd(month, 1, [r].[Dto]),
	DateAdd(month, 1, [r].[Dto])
FROM
	[ZonedRow] [r]

