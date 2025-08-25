BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	MAX([g_1].[Value1]),
	STRING_AGG([g_1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [g_1].[Value1] DESC)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value1]

