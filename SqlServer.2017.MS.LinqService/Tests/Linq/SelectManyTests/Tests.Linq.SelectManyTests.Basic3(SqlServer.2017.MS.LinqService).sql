﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp],
	[Child] [_]
WHERE
	[_].[ParentID] > 0

