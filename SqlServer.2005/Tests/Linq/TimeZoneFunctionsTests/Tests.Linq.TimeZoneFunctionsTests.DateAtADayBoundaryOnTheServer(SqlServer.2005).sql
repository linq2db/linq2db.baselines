-- SqlServer.2005
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2005
SELECT TOP (2)
	DateAdd(dd, DateDiff(dd, 0, [r].[Dto]), 0)
FROM
	[ZonedRow] [r]

-- SqlServer.2005
SELECT TOP (2)
	[t1].[Key_1]
FROM
	(
		SELECT DISTINCT
			DateAdd(dd, DateDiff(dd, 0, [g_1].[Dto]), 0) as [Key_1]
		FROM
			[ZonedRow] [g_1]
	) [t1]

