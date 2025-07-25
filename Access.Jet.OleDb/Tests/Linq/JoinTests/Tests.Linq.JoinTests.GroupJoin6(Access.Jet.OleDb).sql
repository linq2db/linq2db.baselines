﻿BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] + @n = [d].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

