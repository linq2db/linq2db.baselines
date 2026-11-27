-- SqlServer.2008
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2008
SELECT TOP (2)
	CAST([r].[Dto] AS Date)
FROM
	[ZonedRow] [r]

-- SqlServer.2008
SELECT TOP (2)
	[t1].[Key_1]
FROM
	(
		SELECT DISTINCT
			CAST([g_1].[Dto] AS Date) as [Key_1]
		FROM
			[ZonedRow] [g_1]
	) [t1]

