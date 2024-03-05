﻿BeforeExecute
-- SqlServer.2019

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[a_GrandChildren].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[a_GrandChildren].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[a_Parent].[ParentID] IS NOT NULL AND
			[a_Parent].[ParentID] = [a_GrandChildren].[ParentID]
	)
FROM
	[Child] [p1]
		LEFT JOIN [Parent] [a_Parent] ON [p1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[p1].[ParentID] + 2 > 0 AND [p1].[ParentID] + 1 > 0

