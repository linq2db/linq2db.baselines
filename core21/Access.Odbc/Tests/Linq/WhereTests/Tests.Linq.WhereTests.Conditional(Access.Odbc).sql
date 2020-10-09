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
	[p].[PersonID] = 1 AND Iif([p].[MiddleName] IS NULL, 1, 2) = 1 AND
	Iif([p].[FirstName] IS NOT NULL, 1, 2) = 1

