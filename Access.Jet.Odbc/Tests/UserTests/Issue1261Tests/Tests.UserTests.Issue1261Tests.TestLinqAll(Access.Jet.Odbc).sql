BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[GrandChildID] = 777)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[ChildID] = 11)

