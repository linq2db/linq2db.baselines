BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID]
		FROM
			[Child] [gr]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])
ORDER BY
	[d].[ChildID] DESC

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[gr].[ParentID]
FROM
	[Child] [gr]
GROUP BY
	[gr].[ParentID]

