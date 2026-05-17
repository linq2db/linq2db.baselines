-- SqlCe

SELECT
	[g_2].[Date_1],
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			CAST(CONVERT(NVarChar(10), [g_1].[CreatedOnUtc], 101) AS DateTime) as [Date_1]
		FROM
			[Issue5390Table] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Date_1]

-- SqlCe

SELECT
	[t1].[CreatedOnUtc]
FROM
	[Issue5390Table] [t1]

