-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[GrandChild] [t1]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON (([m_1].[ParentID] = [d].[ParentID] OR [m_1].[ParentID] IS NULL AND [d].[ParentID] IS NULL) AND ([m_1].[ChildID] = [d].[ChildID] OR [m_1].[ChildID] IS NULL AND [d].[ChildID] IS NULL))

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

