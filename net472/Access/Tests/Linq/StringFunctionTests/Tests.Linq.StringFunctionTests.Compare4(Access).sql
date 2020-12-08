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
	Iif(LCase(Mid([p].[FirstName], 2, 2)) > 'oh', 1, Iif(LCase(Mid([p].[FirstName], 2, 2)) = 'oh', 0, -1)) = 0 AND [p].[PersonID] = 1

