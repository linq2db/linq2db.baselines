﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	MAX([g_1].[Value4]),
	STRING_AGG([g_1].[Value4], N' -> ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

