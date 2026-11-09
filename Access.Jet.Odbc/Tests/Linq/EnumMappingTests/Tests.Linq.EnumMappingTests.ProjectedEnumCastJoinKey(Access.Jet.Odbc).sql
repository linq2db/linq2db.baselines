-- Access.Jet.Odbc AccessODBC
SELECT
	[l].[PersonID],
	[r].[PersonID] as [RightId_1],
	[r].[Gender]
FROM
	[Person] [l]
		INNER JOIN [Person] [r] ON ([l].[Gender] = [r].[Gender])

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

