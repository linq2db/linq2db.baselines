﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

