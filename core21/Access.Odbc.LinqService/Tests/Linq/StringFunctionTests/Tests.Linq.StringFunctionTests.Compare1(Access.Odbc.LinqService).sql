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
	Iif([p].[FirstName] > 'Joh', 1, Iif([p].[FirstName] = 'Joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

