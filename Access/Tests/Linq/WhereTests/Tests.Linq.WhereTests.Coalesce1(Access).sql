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
	[p].[PersonID] = 1 AND IIF([p].[MiddleName] IS NULL, 'None', [p].[MiddleName]) = 'None' AND
	IIF(1 = 0, 'None', [p].[FirstName]) = 'John'

