BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] MOD 2 DESC

