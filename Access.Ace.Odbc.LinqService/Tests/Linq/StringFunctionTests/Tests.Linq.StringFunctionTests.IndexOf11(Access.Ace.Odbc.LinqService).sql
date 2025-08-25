BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	InStr(1, [p].[FirstName], 'oh', 1) = 2 AND [p].[PersonID] = 1

