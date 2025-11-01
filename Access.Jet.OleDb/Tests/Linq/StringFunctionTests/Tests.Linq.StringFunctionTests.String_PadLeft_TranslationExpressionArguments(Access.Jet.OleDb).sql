-- Access.Jet.OleDb AccessOleDb

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			IIF(Len([p].[FirstName]) >= [p].[PersonID], [p].[FirstName], STRING([p].[PersonID] - Len([p].[FirstName]), '.') + [p].[FirstName]) as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> ''

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

