-- SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016
SELECT TOP (2)
	DateAdd(month, 1, [r].[Dto])
FROM
	[ZonedRow] [r]

