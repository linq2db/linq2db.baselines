﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @separator NVarChar(4000) -- String
SET     @separator = N' -> '

SELECT
	MAX([g_1].[Value4]),
	STRING_AGG([g_1].[Value4], @separator)
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

