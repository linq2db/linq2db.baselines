﻿BeforeExecute
-- SqlServer.2017
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	[t1].[ChildID],
	[t1].[group_1],
	[t1].[count_1],
	[t1].[percents]
FROM
	(
		SELECT
			COUNT(*) as [count_1],
			[g_1].[ChildID],
			[a_Parent].[ParentID] as [group_1],
			(COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER()) as [percents]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
		HAVING
			[a_Parent].[ParentID] = @groupId AND [a_Parent].[ParentID] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[count_1] DESC

