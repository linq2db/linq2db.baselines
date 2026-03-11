-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID],
	(
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
		ORDER BY
			[a_Children].[ChildID]
	),
	(
		SELECT TOP 1
			[a_Children_1].[ChildID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
		ORDER BY
			[a_Children_1].[ChildID]
	),
	(
		SELECT TOP 1
			[a_Children_2].[ParentID]
		FROM
			[Child] [a_Children_2]
		WHERE
			[p].[ParentID] = [a_Children_2].[ParentID]
		ORDER BY
			[a_Children_2].[ChildID]
	),
	(
		SELECT TOP 1
			[a_Children_3].[ChildID]
		FROM
			[Child] [a_Children_3]
		WHERE
			[p].[ParentID] = [a_Children_3].[ParentID]
		ORDER BY
			[a_Children_3].[ChildID]
	)
FROM
	[Parent] [p]

-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

