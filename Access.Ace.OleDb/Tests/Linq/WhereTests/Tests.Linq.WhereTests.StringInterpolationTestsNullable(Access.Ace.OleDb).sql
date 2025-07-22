BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[s].[FirstName],
	[s].[LastName],
	[s].[FullName]
FROM
	(
		SELECT
			[p].[FirstName],
			[p].[LastName] + ', ' + [p].[FirstName] as [LastName],
			((([p].[LastName] + ', ' + [p].[FirstName]) + ' (' + IIF([p].[MiddleName] IS NULL, '', [p].[MiddleName])) + ' + ' + IIF([p].[MiddleName] IS NULL, '', [p].[MiddleName])) + ')' as [FullName]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> '' OR [s].[LastName] <> '' OR [s].[FullName] <> ''
ORDER BY
	[s].[FirstName],
	[s].[LastName]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

