﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

