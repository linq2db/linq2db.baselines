-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FullName]
FROM
	(
		SELECT
			[p].[FirstName],
			[p].[LastName] + ', ' + [p].[FirstName] as [LastName],
			((([p].[LastName] + ', ' + [p].[FirstName]) + ' (' + IIF([p].[MiddleName] IS NULL, '', [p].[MiddleName])) + ' + ' + IIF([p].[MiddleName] IS NULL, '', [p].[MiddleName])) + ')' as [FullName]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[FirstName] <> '' OR [t1].[LastName] <> '' OR
	[t1].[FullName] <> ''
ORDER BY
	[t1].[FirstName],
	[t1].[LastName]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

