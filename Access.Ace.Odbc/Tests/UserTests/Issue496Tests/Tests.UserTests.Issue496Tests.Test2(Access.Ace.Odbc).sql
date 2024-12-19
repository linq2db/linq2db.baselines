BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

