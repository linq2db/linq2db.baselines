﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ParentID] = 2 AND [ch].[ChildID] = 21)

