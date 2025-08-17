BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

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

