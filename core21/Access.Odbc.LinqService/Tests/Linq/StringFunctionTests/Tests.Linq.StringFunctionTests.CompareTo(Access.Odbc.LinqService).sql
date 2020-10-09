BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif([p].[FirstName] > 'John', 1, Iif([p].[FirstName] = 'John', 0, -1)) = 0 AND
	[p].[PersonID] = 1

