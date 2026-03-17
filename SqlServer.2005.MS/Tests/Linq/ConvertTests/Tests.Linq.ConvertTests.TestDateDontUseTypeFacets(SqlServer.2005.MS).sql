-- SqlServer.2005.MS SqlServer.2005

SELECT
	[g_2].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			DateAdd(dd, DateDiff(dd, 0, [g_1].[CreatedOnUtc]), 0) as [Date_1]
		FROM
			[Issue5390Table] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Date_1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[CreatedOnUtc]
FROM
	[Issue5390Table] [t1]

