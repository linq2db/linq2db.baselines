﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

