-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Day]) as [Max_1]
		FROM
			[DateOnlyRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (DATEFROMPARTS(2026, 6, 1))

