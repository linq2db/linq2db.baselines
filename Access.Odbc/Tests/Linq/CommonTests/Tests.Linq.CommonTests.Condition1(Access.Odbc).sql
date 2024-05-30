BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0, True, False),
	[p].[FirstName],
	IIF([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0, True, False),
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

