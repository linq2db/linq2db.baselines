﻿BeforeExecute
--  SqlServer.2016
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

