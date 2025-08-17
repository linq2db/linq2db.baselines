BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON ([p].[ParentID] = Int([ch].[ChildID] / 10))
WHERE
	[ch].[ParentID] = [p].[ParentID]

