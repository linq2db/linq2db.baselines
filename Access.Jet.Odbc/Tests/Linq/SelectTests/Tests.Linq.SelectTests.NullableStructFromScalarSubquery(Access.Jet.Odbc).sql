-- Access.Jet.Odbc AccessODBC
SELECT
	[m_1].[ParentID],
	(
		SELECT TOP 1
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [m_1].[ParentID]
		ORDER BY
			[c_1].[ChildID]
	),
	(
		SELECT TOP 1
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [m_1].[ParentID]
		ORDER BY
			[c_2].[ChildID]
	)
FROM
	[Parent] [m_1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

