﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

