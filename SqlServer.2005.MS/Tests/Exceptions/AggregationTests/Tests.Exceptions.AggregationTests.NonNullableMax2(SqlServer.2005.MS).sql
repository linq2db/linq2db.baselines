﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			Max([_].[ParentID])
		FROM
			[Child] [_]
		WHERE
			[p].[ParentID] = [_].[ParentID] AND [_].[ParentID] < 0
	)
FROM
	[Parent] [p]

