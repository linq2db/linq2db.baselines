﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

