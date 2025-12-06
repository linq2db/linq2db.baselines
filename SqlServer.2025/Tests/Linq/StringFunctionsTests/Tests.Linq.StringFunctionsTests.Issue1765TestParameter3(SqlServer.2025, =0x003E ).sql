-- SqlServer.2025 SqlServer.2022
DECLARE @separator NVarChar(4000) -- String
SET     @separator = N' => '

SELECT
	STRING_AGG([g_1].[Value4], @separator) WITHIN GROUP (ORDER BY [g_1].[Value3] DESC, [g_1].[Value4])
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

