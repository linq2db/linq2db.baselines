﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + @n IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

