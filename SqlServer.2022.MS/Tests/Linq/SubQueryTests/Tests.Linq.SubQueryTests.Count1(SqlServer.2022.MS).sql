﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1]
FROM
	(
		SELECT
			(
				SELECT
					SUM([a_Children].[ParentID])
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 0
			) / 2 as [Sum_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [p_1]
WHERE
	[p_1].[Sum_1] > 1 AND [p_1].[Sum_1] IS NOT NULL

