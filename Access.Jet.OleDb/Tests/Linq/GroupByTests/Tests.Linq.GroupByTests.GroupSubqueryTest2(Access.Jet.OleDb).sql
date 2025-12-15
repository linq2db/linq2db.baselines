-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

