BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] MOD 2 DESC

