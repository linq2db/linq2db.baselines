﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	1
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

