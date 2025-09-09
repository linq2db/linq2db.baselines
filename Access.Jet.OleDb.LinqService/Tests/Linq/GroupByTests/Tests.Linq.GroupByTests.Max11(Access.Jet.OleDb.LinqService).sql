BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	MAX(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

