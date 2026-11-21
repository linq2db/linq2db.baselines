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
	Fix(([p].[PersonID] + 9) / 10) = 1 AND [p].[PersonID] = 1

