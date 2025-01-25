BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] MOD 2,
	[ch].[ChildID] DESC

