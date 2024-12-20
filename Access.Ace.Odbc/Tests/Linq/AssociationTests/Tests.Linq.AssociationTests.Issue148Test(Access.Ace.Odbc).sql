BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[n].[ParentID]
		FROM
			[Parent] [n]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[n].[ParentID]
FROM
	[Parent] [n]

