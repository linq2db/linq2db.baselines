﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take) 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ChildID] > 3 OR [ch].[ChildID] < 4)

