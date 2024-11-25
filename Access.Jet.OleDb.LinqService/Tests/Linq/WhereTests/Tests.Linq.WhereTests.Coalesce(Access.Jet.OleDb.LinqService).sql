BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ([p].[MiddleName] IS NULL OR [p].[MiddleName] = 'None' AND [p].[MiddleName] IS NOT NULL) AND
	[p].[FirstName] = 'John'

