﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

