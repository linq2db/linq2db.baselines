-- Access.Jet.OleDb AccessOleDb
SELECT
	Fix(([t].[ParentID] * 1000) / 1000)
FROM
	[Child] [t]
WHERE
	[t].[ParentID] * 1000 > 2000

