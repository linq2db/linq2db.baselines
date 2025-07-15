BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	(
		SELECT TOP 1
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

