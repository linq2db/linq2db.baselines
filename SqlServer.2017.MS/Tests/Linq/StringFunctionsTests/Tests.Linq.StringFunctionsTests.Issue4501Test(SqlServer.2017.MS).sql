-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[Id],
	STRING_AGG([g_1].[Value1], N', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]

