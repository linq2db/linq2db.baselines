﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			Max([id].[ChildID])
		FROM
			[Child] [id]
		WHERE
			[t1].[ParentID] = [id].[ParentID] AND [id].[ChildID] > 0
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

