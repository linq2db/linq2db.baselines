﻿BeforeExecute
-- SqlServer.2014

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + 1 < [p1].[ParentID] + 1
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] + 1 > 0

