-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [GrandChild] [ch] ON ([p].[ParentID] = 1 + [ch].[ParentID] AND [ch].[ParentID] > 0)
WHERE
	NOT ([ch].[ParentID] IS NOT NULL AND [ch].[ChildID] IS NOT NULL)

