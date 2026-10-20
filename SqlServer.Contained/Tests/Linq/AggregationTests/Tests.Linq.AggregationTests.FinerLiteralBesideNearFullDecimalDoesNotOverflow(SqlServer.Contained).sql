-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[ComputedDecimalRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Wide]) = 1.000001
	) [t1]

