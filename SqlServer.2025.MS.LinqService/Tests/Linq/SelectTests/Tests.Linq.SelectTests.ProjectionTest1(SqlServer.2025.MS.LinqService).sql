﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[c_1].[ChildID],
	[a_ParentID2].[ParentID],
	[a_ParentID2].[Value1],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [a_ParentID2] ON [c_1].[ParentID] = [a_ParentID2].[ParentID]

