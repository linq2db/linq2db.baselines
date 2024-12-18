﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1],
	[p].[ParentID],
	[p].[Value1],
	IIF([a_Parent].[ParentID] IS NOT NULL, [a_Parent].[Value1], NULL)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[p].[ParentID] > 0 OR [p].[Value1] > 0 AND [p].[Value1] IS NOT NULL OR
	[a_Parent].[Value1] > 0 AND [a_Parent].[Value1] IS NOT NULL

