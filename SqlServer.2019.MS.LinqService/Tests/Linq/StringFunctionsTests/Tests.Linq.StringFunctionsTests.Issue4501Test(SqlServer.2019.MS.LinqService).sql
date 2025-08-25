BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[g_1].[Id],
	STRING_AGG([g_1].[Value1], N', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]

