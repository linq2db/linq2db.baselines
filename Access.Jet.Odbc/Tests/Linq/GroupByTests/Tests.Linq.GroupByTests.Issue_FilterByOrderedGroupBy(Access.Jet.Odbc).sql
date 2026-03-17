-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WHERE
	[t].[ParentID] IN (
		SELECT TOP 2
			[t1].[ParentID]
		FROM
			(
				SELECT
					MAX([g_1].[ChildID]) as [Max_1],
					[g_1].[ParentID]
				FROM
					[Child] [g_1]
				GROUP BY
					[g_1].[ParentID]
			) [t1]
		ORDER BY
			[t1].[Max_1] DESC
	)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

