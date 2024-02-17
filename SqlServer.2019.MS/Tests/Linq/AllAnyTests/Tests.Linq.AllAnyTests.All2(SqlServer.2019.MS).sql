﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3 AND [p].[ParentID] = [c_1].[ParentID]
	)

