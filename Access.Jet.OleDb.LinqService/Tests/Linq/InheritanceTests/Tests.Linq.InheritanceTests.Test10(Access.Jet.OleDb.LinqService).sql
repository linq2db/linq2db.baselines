BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	[t1].[Value1] IS NOT NULL AND [t1].[Value1] <> 1

