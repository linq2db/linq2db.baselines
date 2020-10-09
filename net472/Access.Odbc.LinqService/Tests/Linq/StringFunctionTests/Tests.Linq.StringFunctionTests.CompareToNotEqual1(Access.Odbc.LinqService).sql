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
	(Iif([p].[FirstName] > 'Jo', 1, Iif([p].[FirstName] = 'Jo', 0, -1)) <> 0 OR Iif([p].[FirstName] > 'Jo', 1, Iif([p].[FirstName] = 'Jo', 0, -1)) IS NULL) AND
	[p].[PersonID] = 1

