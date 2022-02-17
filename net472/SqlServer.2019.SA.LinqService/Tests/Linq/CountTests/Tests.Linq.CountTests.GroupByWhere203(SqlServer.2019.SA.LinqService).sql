﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[g_1].[ParentID]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Child] [ch]
				WHERE
					[t1].[ParentID] = [ch].[ParentID] AND [ch].[ChildID] > 20
			) as [ex],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [g_1]
WHERE
	([g_1].[ex] > 2 OR [g_1].[ParentID] > 2)

