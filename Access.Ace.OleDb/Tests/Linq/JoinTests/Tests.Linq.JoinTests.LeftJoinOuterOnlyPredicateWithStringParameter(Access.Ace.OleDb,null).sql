-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		LEFT JOIN [Doctor] [d] ON ([d].[PersonID] = IIF([p].[PersonID] IS NULL, [p].[PersonID], NULL))

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

