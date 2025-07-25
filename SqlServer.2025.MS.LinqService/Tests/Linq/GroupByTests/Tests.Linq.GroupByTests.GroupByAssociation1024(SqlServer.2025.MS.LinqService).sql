﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[a_Parent].[Value1]
FROM
	[GrandChild] [g_1]
		INNER JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
HAVING
	COUNT(IIF([g_1].[ChildID] >= 20, 1, NULL)) > 2 AND
	SUM(IIF([g_1].[ChildID] >= 19, [g_1].[ParentID], NULL)) > 0 AND
	MAX(IIF([g_1].[ChildID] >= 19, [g_1].[ParentID], NULL)) > 0 AND
	MAX(IIF([g_1].[ChildID] >= 18, [g_1].[ParentID], NULL)) > 0

