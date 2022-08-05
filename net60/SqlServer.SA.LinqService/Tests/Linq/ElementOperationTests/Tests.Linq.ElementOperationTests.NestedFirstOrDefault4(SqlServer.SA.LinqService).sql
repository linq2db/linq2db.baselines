﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				(
					SELECT DISTINCT
						[c_1].[ParentID],
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					WHERE
						[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 0
				) [t1]
			ORDER BY
				[t1].[ChildID]
		) [t2]

