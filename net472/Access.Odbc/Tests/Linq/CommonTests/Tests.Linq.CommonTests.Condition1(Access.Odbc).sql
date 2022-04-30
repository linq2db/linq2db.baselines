BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif(([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0), True, False),
	[p].[FirstName],
	Iif(([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0), True, False),
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

