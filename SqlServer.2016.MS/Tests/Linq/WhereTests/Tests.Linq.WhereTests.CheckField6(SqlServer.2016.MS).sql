﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[Value1],
	[p].[Value1] * 100,
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] * 100 > 0

