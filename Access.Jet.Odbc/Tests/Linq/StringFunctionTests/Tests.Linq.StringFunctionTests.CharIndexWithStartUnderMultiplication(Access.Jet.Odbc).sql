-- Access.Jet.Odbc AccessODBC
SELECT
	InStr(1, [p].[FirstName], 'o', 1) * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

