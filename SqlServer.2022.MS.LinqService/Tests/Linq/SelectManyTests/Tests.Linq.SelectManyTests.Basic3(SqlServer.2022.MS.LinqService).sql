﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [_]
WHERE
	[_].[ParentID] + 1 > 1

