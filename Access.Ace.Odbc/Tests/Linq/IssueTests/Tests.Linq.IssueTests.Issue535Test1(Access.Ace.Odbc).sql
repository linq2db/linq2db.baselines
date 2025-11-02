-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'J%' AND ([p].[PersonID] = 1 OR [p].[LastName] = 'fail')

