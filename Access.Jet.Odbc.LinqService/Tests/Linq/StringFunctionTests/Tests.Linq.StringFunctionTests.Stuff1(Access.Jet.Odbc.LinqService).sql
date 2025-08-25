BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Left([p].[FirstName], 2) + '123' + RIGHT([p].[FirstName], Len([p].[FirstName]) - 3) = 'Jo123n' AND
	[p].[PersonID] = 1

