BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

