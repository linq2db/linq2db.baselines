-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] <> 1 OR [x].[Value1] IS NULL

-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	NOT ([x].[Value1] = 1 AND [x].[Value1] IS NOT NULL)

-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	NOT ([x].[Value1] = 1 AND [x].[Value1] IS NOT NULL)

