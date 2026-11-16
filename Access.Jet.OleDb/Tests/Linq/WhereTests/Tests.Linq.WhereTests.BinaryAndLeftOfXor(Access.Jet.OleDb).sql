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
	([p].[PersonID] BAND 3 BXOR 1) = 0

