﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 3
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
OFFSET @n ROWS FETCH NEXT @take ROWS ONLY 

