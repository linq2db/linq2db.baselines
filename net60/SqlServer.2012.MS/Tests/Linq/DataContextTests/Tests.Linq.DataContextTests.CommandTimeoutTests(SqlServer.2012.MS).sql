﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

