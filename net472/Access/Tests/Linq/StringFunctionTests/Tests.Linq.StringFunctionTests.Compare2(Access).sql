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
	Iif(LCase([p].[FirstName]) > 'joh', 1, Iif(LCase([p].[FirstName]) = 'joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

