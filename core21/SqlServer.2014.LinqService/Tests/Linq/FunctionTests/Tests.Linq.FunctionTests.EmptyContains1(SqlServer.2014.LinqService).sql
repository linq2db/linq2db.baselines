﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(1 = 0 OR [p].[ParentID] = 2)

