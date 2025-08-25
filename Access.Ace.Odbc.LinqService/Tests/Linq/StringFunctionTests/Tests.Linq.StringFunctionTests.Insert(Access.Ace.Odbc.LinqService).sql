BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(Len([p].[FirstName]) = 2, [p].[FirstName] + '123', Left([p].[FirstName], 2) + '123' + RIGHT([p].[FirstName], Len([p].[FirstName]) - 2)) = 'Jo123hn' AND
	[p].[PersonID] = 1

