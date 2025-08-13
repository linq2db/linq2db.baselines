BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[s].[FirstName],
	[s].[LastName],
	[s].[FullName]
FROM
	(
		SELECT
			[p].[FirstName],
			[p].[LastName] + N', ' + [p].[FirstName] as [LastName],
			((([p].[LastName] + N', ' + [p].[FirstName]) + N' (' + Coalesce([p].[MiddleName], N'')) + N' + ' + Coalesce([p].[MiddleName], N'')) + N')' as [FullName]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> N'' OR [s].[LastName] <> N'' OR
	[s].[FullName] <> N''
ORDER BY
	[s].[FirstName],
	[s].[LastName]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

