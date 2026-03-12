-- Access.Jet.Odbc AccessODBC

SELECT TOP 10
	(
		SELECT TOP 1
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
		ORDER BY
			[c_1].[ChildID]
	),
	(
		SELECT TOP 1
			[c_2].[ChildID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [p].[ParentID]
		ORDER BY
			[c_2].[ChildID]
	)
FROM
	[Parent] [p]

