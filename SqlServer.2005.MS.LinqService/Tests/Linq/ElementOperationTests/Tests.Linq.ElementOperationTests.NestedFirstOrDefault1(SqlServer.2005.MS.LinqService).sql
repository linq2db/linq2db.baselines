﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

