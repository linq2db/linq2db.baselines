﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	1
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

