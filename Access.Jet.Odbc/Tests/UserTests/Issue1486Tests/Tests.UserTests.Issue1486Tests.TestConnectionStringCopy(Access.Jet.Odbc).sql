BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID]
		FROM
			(
				SELECT TOP 1
					[a_Parent].[ParentID]
				FROM
					[Child] [t1]
						LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])
			) [t2]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])

BeforeExecute
DisposeTransaction
