﻿BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[g_1].[Id],
	SUM([g_1].[Id])
FROM
	(SELECT CAST(NULL AS Int) [Id] WHERE 1 = 0) [g_1]([Id])
GROUP BY
	[g_1].[Id]

