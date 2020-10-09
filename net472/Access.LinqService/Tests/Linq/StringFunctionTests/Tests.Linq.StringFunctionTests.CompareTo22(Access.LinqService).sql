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
	0 >= Iif([p].[FirstName] > 'Johnn', 1, Iif([p].[FirstName] = 'Johnn', 0, -1)) AND
	[p].[PersonID] = 1

