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
	IIF(LCase([p].[FirstName]) > 'joh', 1, IIF(LCase([p].[FirstName]) = 'joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

