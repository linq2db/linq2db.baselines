BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 2
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] = 1
			) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

BeforeExecute
DisposeTransaction
