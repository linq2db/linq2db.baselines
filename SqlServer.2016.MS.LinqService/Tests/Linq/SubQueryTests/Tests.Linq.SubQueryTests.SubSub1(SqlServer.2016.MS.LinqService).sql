﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + 1 < [p1].[ParentID] + 1
	)
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > -1

