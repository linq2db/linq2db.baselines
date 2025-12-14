-- SqlServer.SA.MS SqlServer.2019

SELECT
	MAX([g_1].[Value1]),
	STRING_AGG([g_1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [g_1].[Value1] DESC)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value1]

