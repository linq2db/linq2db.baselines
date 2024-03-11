﻿BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Child] [p1]
		LEFT JOIN [Parent] [a_Parent] ON [p1].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[a_Parent].[ParentID] IS NOT NULL AND
				[a_Parent].[ParentID] = [a_GrandChildren].[ParentID] AND
				[a_GrandChildren].[ParentID] + 1 < [p1].[ParentID] + 2 AND
				[a_GrandChildren].[ParentID] + 1 < [p1].[ParentID] + 2
		) [t1]
WHERE
	[p1].[ParentID] + 1 > 0 AND [p1].[ParentID] + 2 > 0

