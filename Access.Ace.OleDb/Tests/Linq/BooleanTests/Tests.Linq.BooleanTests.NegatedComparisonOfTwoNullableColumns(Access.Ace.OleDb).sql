-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[ParentID],
	[q].[ParentID] as [B_1]
FROM
	[Parent] [x],
	[Parent] [q]
WHERE
	[x].[Value1] <> [q].[Value1] OR [x].[Value1] IS NULL AND [q].[Value1] IS NOT NULL OR
	[x].[Value1] IS NOT NULL AND [q].[Value1] IS NULL

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[ParentID],
	[q].[ParentID] as [B_1]
FROM
	[Parent] [x],
	[Parent] [q]
WHERE
	[x].[Value1] <> [q].[Value1] OR [x].[Value1] IS NULL AND [q].[Value1] IS NOT NULL OR
	[x].[Value1] IS NOT NULL AND [q].[Value1] IS NULL

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

