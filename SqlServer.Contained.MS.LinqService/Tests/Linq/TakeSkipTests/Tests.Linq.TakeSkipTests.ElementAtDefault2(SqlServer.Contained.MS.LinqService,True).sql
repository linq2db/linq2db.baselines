﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 300000
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
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

