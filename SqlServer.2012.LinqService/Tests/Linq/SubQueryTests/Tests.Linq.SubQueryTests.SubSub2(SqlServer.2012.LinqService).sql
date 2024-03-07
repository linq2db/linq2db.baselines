﻿BeforeExecute
-- SqlServer.2012

SELECT
	(
		SELECT TOP (1)
			[a_Children].[ParentID] + 1
		FROM
			[Child] [a_Children]
		WHERE
			[p1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + 1 < [p1].[ParentID] + 2 AND
			[a_Children].[ParentID] + 1 < [p1].[ParentID] + 2
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] + 1 > 0 AND [p1].[ParentID] + 2 > 0

