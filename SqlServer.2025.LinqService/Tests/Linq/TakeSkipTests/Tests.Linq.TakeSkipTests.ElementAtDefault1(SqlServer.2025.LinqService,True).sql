﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
	[p].[ParentID]
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

