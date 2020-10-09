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
	Iif(Mid([p].[FirstName], 2, 2) > 'oh', 1, Iif(Mid([p].[FirstName], 2, 2) = 'oh', 0, -1)) = 0 AND
	[p].[PersonID] = 1

