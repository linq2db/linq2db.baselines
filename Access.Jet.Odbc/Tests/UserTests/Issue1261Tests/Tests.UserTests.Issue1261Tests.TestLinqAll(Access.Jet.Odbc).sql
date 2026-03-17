-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL AND [x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL)

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL AND [x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL)

