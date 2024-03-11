﻿BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[Sum_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Sum([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
		) [t1]
WHERE
	[p].[ParentID] > 0

