-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] = 'Pupkin' AND [p].[FirstName] = 'John'

