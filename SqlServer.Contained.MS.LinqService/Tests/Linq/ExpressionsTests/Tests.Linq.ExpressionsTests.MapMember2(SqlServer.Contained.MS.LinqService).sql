﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > 1
	)
FROM
	[Parent] [p]

