﻿BeforeExecute
--  SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ParentID] DESC,
	[t1].[ChildID]

