﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		LEFT HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

