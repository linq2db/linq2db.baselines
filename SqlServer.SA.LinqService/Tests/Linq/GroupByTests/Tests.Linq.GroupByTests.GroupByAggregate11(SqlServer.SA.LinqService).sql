﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		WHERE
			(
				SELECT
					Count(*)
				FROM
					[Child] [a_Children_1]
				WHERE
					[g_1].[ParentID] = [a_Children_1].[ParentID]
			) > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

