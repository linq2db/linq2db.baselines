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
	[p].[PersonID] = 1 AND IIF([p].[MiddleName] IS NOT NULL, 3, IIF([p].[PersonID] = 2, 2, IIF([p].[MiddleName] IS NOT NULL, 0, 1))) = 1 AND
	IIF([p].[FirstName] IS NULL, 3, IIF([p].[PersonID] = 2, 2, IIF([p].[FirstName] IS NULL, 0, 1))) = 1

