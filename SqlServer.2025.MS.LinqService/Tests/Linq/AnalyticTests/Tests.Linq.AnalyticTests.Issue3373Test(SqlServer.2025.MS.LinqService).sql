﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	SUM(IIF([t].[ParentID] IN (3), [t].[ChildID], 0)) OVER(PARTITION BY [a_Parent].[Value1] ORDER BY [t].[ParentID])
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]

