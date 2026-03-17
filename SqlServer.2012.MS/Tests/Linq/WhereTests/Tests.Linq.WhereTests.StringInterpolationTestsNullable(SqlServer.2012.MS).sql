-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FullName]
FROM
	(
		SELECT
			[p].[FirstName],
			[p].[LastName] + N', ' + [p].[FirstName] as [LastName],
			((([p].[LastName] + N', ' + [p].[FirstName]) + N' (' + Coalesce([p].[MiddleName], N'')) + N' + ' + Coalesce([p].[MiddleName], N'')) + N')' as [FullName]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[FirstName] <> N'' OR [t1].[LastName] <> N'' OR
	[t1].[FullName] <> N''
ORDER BY
	[t1].[FirstName],
	[t1].[LastName]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

