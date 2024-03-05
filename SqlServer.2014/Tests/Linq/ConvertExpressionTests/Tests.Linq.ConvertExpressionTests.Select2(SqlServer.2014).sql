﻿BeforeExecute
-- SqlServer.2014

SELECT
	(
		SELECT
			Sum([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

