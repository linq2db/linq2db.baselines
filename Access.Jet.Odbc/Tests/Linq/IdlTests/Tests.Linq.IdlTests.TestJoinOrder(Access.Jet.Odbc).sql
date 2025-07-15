BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[ChildID],
	[x].[ParentID],
	[p3].[PersonID],
	[p3].[FirstName]
FROM
	([GrandChild] [x]
		INNER JOIN [Person] [p2] ON ([x].[ParentID] = [p2].[PersonID]))
		INNER JOIN [Person] [p3] ON ([x].[ChildID] = [p3].[PersonID])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[ChildID],
	[x].[ParentID],
	[p2].[PersonID],
	[p2].[FirstName]
FROM
	([GrandChild] [x]
		INNER JOIN [Person] [p2] ON ([x].[ParentID] = [p2].[PersonID]))
		INNER JOIN [Person] [p3] ON ([x].[ChildID] = [p3].[PersonID])

