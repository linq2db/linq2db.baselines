﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [p]

