-- Access.Ace.Odbc AccessODBC

SELECT
	[x_1].[MiddleName],
	[x_1].[LastName]
FROM
	(
		SELECT DISTINCT
			[x].[MiddleName],
			IIF([x].[LastName] = 'Pupkin', NULL, [x].[LastName]) as [LastName]
		FROM
			[Person] [x]
	) [x_1]
ORDER BY
	IIF([x_1].[MiddleName] IS NULL, '-2', [x_1].[MiddleName]) DESC

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

