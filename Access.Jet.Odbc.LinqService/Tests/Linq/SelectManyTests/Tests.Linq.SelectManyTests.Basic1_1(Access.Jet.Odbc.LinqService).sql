﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t2].[ParentID],
	[t2].[ChildID],
	[t2].[GrandChildID]
FROM
	[Parent] [p],
	[Child] [t1],
	[GrandChild] [t2]

