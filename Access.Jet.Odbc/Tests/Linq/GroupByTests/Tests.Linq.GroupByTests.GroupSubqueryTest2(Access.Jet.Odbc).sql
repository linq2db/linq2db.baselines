-- Access.Jet.Odbc AccessODBC

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1],
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [pmp]
		GROUP BY
			[pmp].[ParentID]
	) [pmp_1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

