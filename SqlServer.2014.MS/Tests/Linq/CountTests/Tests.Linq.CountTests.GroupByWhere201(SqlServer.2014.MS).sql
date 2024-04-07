﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
	[g_1].[ex] > 2

