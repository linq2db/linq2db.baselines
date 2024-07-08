﻿BeforeExecute
-- SqlServer.2022
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	[t1].[ChildID],
	[t1].[group_1],
	[t1].[COUNT_1],
	[t1].[percents]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [group_1],
			COUNT(*) as [COUNT_1],
			[g_1].[ChildID],
			(COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER()) as [percents]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
	) [t1]
WHERE
	[t1].[group_1] = @groupId
ORDER BY
	[t1].[COUNT_1] DESC

