﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[t1].[Key_1],
	[t1].[COUNT_1],
	[t1].[window_1]
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1],
			COUNT(*) as [COUNT_1],
			COUNT(*) OVER() as [window_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]
ORDER BY
	[t1].[Key_1] DESC

