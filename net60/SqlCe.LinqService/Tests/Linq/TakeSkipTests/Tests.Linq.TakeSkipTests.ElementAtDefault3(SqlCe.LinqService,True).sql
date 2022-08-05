﻿BeforeExecute
-- SqlCe
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
	[p].[ParentID],
	[p].[Value1]
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

