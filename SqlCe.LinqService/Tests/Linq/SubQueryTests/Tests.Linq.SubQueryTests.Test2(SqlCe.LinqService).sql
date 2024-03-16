﻿BeforeExecute
-- SqlCe

SELECT
	[t1].[Max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Max([ch].[ChildID]) as [Max_1]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] > 1
		) [t1]
WHERE
	[p].[ParentID] <> 5

