﻿BeforeExecute
-- SqlCe

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
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

