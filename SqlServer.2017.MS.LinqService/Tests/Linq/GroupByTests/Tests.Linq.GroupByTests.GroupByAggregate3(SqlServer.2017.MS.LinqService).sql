﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_2].[c1]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([a_Children].[ParentID])
				FROM
					[Child] [a_Children]
				WHERE
					[g_1].[ParentID] = [a_Children].[ParentID]
			) > 3, 1, 0) as [c1]
		FROM
			[Parent] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]
ORDER BY
	[g_2].[c1]

