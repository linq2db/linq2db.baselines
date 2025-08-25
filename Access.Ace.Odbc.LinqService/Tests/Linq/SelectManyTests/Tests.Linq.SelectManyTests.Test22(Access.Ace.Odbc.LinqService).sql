BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[p].[PersonID],
	[p2].[FirstName],
	[p3].[LastName]
FROM
	[Person] [p],
	[Person] [p2],
	[Person] [p3]
WHERE
	[p].[PersonID] = [p2].[PersonID] AND [p].[LastName] = [p3].[LastName] AND
	[p].[PersonID] = 1

