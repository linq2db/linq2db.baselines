-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	DateAdd(dd, DateDiff(dd, 0, [r].[Dto]), 0),
	[r].[Dto]
FROM
	[ZonedRow] [r]

