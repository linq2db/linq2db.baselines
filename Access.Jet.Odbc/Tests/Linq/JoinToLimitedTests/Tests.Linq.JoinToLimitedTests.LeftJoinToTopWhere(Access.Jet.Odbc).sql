-- Access.Jet.Odbc AccessODBC

SELECT
	[o].[ParentID],
	[o].[Value1],
	(
		SELECT TOP 1
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [o].[ParentID]
		ORDER BY
			[c_1].[ChildID] DESC
	),
	(
		SELECT TOP 1
			[c_2].[ChildID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [o].[ParentID]
		ORDER BY
			[c_2].[ChildID] DESC
	)
FROM
	[Parent] [o]

