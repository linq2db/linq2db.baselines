-- SqlCe

SELECT
	[p].[FirstName],
	[p].[LastName] + ', ' + [p].[FirstName] as [LastName],
	((([p].[LastName] + ', ' + [p].[FirstName]) + ' (' + Coalesce([p].[MiddleName], '')) + ' + ' + Coalesce([p].[MiddleName], '')) + ')' as [FullName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] <> '' OR ([p].[LastName] + ', ' + [p].[FirstName]) <> '' OR
	((([p].[LastName] + ', ' + [p].[FirstName]) + ' (' + Coalesce([p].[MiddleName], '')) + ' + ' + Coalesce([p].[MiddleName], '')) + ')' <> ''
ORDER BY
	[p].[FirstName],
	[p].[LastName] + ', ' + [p].[FirstName]

-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

