BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] MOD 2 DESC,
	[ch].[ChildID] DESC

