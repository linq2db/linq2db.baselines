﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	(
		SELECT
			MAX([a_Children].[ParentID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] < 0
	)
FROM
	[Parent] [p]

