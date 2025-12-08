-- SqlServer.SA.MS SqlServer.2019

SELECT
	MAX([g_1].[Value4]),
	STRING_AGG([g_1].[Value4], CAST(N' -> ' AS NVarChar(50)))
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

