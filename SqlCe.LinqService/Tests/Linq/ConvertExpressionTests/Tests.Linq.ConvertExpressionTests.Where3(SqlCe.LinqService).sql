﻿BeforeExecute
-- SqlCe

SELECT
	[t1].[SUM_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM([a_Children].[ChildID]) as [SUM_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
				[a_Children].[ParentID] < 10
		) [t1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1 AND
			[c_1].[ParentID] < 10
	)

