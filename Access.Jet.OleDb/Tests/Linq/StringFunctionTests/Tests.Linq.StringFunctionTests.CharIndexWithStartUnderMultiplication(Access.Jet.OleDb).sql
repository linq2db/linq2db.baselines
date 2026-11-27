-- Access.Jet.OleDb AccessOleDb
SELECT
	InStr(1, [p].[FirstName], 'o', 1) * 2
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

