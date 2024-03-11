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
	IIF(IIF([p].[FirstName] LIKE 'Jo%', True, False) IS NULL, False, IIF([p].[FirstName] IS NULL, NULL, [p].[FirstName] LIKE 'Jo%')) = True

