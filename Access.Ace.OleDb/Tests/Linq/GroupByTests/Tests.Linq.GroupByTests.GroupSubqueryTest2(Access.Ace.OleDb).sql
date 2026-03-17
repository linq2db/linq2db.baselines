-- Access.Ace.OleDb AccessOleDb

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1],
	(
		SELECT DISTINCT
			[pmp].[ParentID]
		FROM
			[Child] [pmp]
	) [pmp_1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

