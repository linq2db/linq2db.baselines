﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[Value1],
	[p].[Value1] * 100,
	[p].[ParentID],
	[p].[Value1] * 100
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[Value1] * 100 > 0

