﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	STRING_AGG([g_1].[Value1], N' -> ') WITHIN GROUP (ORDER BY [g_1].[Value3], [g_1].[Value1] DESC)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value1]

