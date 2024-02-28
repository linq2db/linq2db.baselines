﻿BeforeExecute
-- SqlServer.2017

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	EXISTS(
		SELECT
			[y].[ParentID]
		FROM
			[Child] [y]
		GROUP BY
			[y].[ParentID]
		HAVING
			(Max([y].[ChildID]) = [x].[ChildID])
	)

