-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[MiddleName]
FROM
	(
		SELECT DISTINCT
			[ch].[MiddleName]
		FROM
			[Person] [ch]
	) [t1]
ORDER BY
	IIF([t1].[MiddleName] IS NULL, '-1', [t1].[MiddleName])

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

