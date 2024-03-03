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
	IIF([p].[FirstName] > 'Jo', 1, IIF([p].[FirstName] = 'Jo', 0, -1)) <> 0 AND
	[p].[PersonID] = 1

