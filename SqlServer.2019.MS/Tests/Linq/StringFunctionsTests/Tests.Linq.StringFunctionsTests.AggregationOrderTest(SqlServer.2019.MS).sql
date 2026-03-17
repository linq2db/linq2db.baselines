-- SqlServer.2019.MS SqlServer.2019

SELECT
	[g_1].[Id],
	MAX([g_1].[Value1]),
	STRING_AGG([g_1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [g_1].[Value1])
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value1]
ORDER BY
	[g_1].[Id]

