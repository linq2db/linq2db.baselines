﻿BeforeExecute
-- SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1 OR [p].[ParentID] > 2 OR [p].[ParentID] > 3

