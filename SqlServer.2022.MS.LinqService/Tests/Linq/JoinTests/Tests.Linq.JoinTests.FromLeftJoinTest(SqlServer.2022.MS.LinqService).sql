﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [GrandChild] [g_1] ON [c_1].[ChildID] IN (
			SELECT
				[r].[PersonID] as [ID]
			FROM
				[Person] [r]
		)

