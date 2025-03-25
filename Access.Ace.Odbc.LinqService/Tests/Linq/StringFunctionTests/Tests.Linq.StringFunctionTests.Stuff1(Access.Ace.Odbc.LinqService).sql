BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Left([p].[FirstName], 2) + '123' + RIGHT([p].[FirstName], LEN([p].[FirstName]) - 3) = 'Jo123n' AND
	[p].[PersonID] = 1

