﻿BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ParentID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 0
			ORDER BY
				[c_1].[ParentID]
		) [t1] ON 1=1
		LEFT JOIN (
			SELECT TOP (1)
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
			ORDER BY
				[c_2].[ParentID]
		) [t2] ON 1=1
ORDER BY
	[p].[ParentID]

