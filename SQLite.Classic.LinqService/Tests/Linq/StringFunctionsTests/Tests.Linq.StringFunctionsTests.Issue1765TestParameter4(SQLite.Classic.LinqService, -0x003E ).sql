BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @separator NVarChar(4) -- String
SET     @separator = ' -> '

SELECT
	MAX([g_1].[Value4]),
	GROUP_CONCAT([g_1].[Value4], @separator)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

