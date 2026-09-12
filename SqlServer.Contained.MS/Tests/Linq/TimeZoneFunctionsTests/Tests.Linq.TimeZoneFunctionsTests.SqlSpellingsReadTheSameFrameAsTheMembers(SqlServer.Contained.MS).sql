-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	DatePart(hour, [r].[Dto]),
	DatePart(hour, [r].[Dto]),
	DateAdd(month, 1, [r].[Dto]),
	DateAdd(month, 1, [r].[Dto])
FROM
	[ZonedRow] [r]

