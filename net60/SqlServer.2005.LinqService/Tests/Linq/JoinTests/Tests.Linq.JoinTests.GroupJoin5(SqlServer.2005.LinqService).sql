﻿BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
			ORDER BY
				[ch].[ChildID]
		) [t1]
WHERE
	[p].[ParentID] >= 1
ORDER BY
	[p].[ParentID]

