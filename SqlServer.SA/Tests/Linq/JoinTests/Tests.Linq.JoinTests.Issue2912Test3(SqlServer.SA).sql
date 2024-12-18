﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	IIF([t1].[ParentID] IS NOT NULL, [t1].[ChildID], 0)
FROM
	[Parent] [employee]
		LEFT JOIN [GrandChild] [names_1] ON [employee].[ParentID] = [names_1].[ParentID] AND [names_1].[ParentID] IS NOT NULL
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[employee].[ParentID] = [a_Children].[ParentID]
		) [t1]

