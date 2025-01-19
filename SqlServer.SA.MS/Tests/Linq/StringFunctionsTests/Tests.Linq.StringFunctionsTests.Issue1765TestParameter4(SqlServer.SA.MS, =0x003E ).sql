BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @separator NVarChar(4000) -- String
SET     @separator = N' => '

SELECT
	MAX([g_1].[Value4]),
	STRING_AGG([g_1].[Value4], @separator)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

