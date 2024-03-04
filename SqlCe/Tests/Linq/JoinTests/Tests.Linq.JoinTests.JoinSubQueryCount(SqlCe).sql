﻿BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + @n
		) [t1]
WHERE
	[p].[ParentID] > 0

