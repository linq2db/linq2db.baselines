﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[x].[ParentID], 
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] % 2 DESC,
	[x].[ChildID] DESC

