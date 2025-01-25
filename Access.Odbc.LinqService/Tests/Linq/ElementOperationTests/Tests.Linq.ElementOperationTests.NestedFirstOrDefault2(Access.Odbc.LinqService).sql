BeforeExecute
-- Access.Odbc AccessODBC

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
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])
ORDER BY
	[d].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

