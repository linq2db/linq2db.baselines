﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	1
OFFSET @n ROWS

