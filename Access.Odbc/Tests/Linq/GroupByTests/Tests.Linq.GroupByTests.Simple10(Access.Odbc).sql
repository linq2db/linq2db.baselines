BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

