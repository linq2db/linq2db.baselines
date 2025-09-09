BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[p].[ParentID],
	CBool(True)
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	CBool(False)
FROM
	[Child] [ch]

