-- SqlServer.SA.MS SqlServer.2019

SELECT
	[g_2].[Id1],
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1],
			[g_1].[Id2],
			[g_1].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [g_1]
	) [g_2]
GROUP BY GROUPING SETS (
	([g_2].[Id1], [g_2].[Id2]),
	([g_2].[Id2]),
	()
)
HAVING
	COUNT(*) > 0 OR GROUPING([g_2].[Id1]) = 1

