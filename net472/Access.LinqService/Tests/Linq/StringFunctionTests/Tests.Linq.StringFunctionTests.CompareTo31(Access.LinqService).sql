BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif([p].[FirstName] > '55', 1, Iif([p].[FirstName] = '55', 0, -1)) >= 0 AND
	[p].[PersonID] = 1

