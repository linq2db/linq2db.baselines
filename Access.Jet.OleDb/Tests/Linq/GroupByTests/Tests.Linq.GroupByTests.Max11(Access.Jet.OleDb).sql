-- Access.Jet.OleDb AccessOleDb

SELECT
	MAX(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

