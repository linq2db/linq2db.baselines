BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			[p].[ParentID] < 2
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 2
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[ParentID] = [d].[ParentID])

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
	[p].[ParentID] < 2

