﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 3
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
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

