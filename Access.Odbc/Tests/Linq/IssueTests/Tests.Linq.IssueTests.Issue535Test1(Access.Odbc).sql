BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] = 1 OR [p].[LastName] = 'fail') AND
	[p].[FirstName] LIKE 'J%'

