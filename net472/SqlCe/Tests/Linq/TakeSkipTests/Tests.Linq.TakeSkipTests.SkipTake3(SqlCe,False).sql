﻿BeforeExecute
-- SqlCe

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET 3 ROWS FETCH NEXT 5 ROWS ONLY 

BeforeExecute
-- SqlCe

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET 3 ROWS FETCH NEXT 5 ROWS ONLY 

