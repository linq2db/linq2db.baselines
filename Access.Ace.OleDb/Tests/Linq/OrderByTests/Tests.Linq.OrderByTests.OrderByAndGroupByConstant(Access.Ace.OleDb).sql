﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

