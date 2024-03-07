﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	(
		SELECT
			Sum([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1
	)
FROM
	[Parent] [p]

