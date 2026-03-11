-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
UNION
SELECT
	[p2].[ParentID],
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]

