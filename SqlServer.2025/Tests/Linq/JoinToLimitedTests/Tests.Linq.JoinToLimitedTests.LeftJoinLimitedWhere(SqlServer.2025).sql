﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT TOP (1)
				[x].[ParentID],
				[x].[ChildID]
			FROM
				[Child] [x]
			ORDER BY
				[x].[ChildID] DESC
		) [c_1] ON [c_1].[ParentID] = [o].[ParentID]

