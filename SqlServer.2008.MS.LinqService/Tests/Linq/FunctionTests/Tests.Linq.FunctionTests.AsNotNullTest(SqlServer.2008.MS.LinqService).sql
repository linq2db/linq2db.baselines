﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1],
	[Parent] [p2]
WHERE
	[p1].[Value1] = [p2].[Value1]

