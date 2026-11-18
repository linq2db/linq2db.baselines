-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	IIF([p].[Value1] BETWEEN 1 AND 3, True, False),
	IIF([p].[Value1] NOT BETWEEN 1 AND 3, True, False)
FROM
	[Parent] [p]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

