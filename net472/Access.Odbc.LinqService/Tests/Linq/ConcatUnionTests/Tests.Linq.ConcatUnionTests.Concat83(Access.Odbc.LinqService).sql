﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[c_1].[ParentID], 
	[c_1].[ParentID], 
	Iif([c_1].[Value1] IS NULL, 0, [c_1].[Value1])
FROM
	[Parent] [c_1]
UNION ALL
SELECT 
	[c_2].[ParentID], 
	[c_2].[ChildID], 
	[c_2].[ParentID] + 1
FROM
	[Child] [c_2]

