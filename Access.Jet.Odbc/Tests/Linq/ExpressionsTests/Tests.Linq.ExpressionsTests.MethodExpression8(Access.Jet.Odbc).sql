-- Access.Jet.Odbc AccessODBC

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON ([p].[ParentID] = Int([ch].[ChildID] / 10))
WHERE
	[ch].[ParentID] = [p].[ParentID]

