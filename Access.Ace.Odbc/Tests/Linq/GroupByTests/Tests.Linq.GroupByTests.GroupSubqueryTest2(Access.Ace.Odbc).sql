-- Access.Ace.Odbc AccessODBC

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1],
	(
		SELECT
			[pmp].[ParentID]
		FROM
			[Child] [pmp]
		GROUP BY
			[pmp].[ParentID]
	) [pmp_1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

