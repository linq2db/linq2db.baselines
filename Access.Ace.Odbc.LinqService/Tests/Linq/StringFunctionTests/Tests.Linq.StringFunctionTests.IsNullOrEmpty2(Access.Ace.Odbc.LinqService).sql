BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	Len([p].[FirstName]) = 0
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

