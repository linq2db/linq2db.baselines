﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

