-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[ParentID],
	IIF([v].[PersonID] IS NOT NULL, [p].[Value1], NULL)
FROM
	[Parent] [p]
		LEFT JOIN [Person] [v] ON ([v].[PersonID] = [p].[ParentID])

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

