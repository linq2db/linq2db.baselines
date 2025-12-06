-- Access.Ace.OleDb AccessOleDb

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[ParentID],
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]

