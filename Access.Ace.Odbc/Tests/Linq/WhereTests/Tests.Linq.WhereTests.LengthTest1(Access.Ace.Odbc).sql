BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	Len([nm].[MiddleName]) <> 0 OR [nm].[MiddleName] IS NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

