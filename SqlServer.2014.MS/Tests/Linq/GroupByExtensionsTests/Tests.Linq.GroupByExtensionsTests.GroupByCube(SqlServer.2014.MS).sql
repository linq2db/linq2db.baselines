-- SqlServer.2014.MS SqlServer.2014

SELECT
	GROUPING([g_2].[Id1]),
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
GROUP BY CUBE (
	[g_2].[Id1],
	[g_2].[Id2]
)

