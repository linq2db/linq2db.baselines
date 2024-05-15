BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0, True, False)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

