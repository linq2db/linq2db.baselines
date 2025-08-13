BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = [p].[ParentID] AND [p].[Value1] = 1

