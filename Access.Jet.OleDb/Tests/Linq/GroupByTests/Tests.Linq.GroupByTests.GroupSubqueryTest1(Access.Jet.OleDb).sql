﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [pmp],
	[Child] [pmp1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

