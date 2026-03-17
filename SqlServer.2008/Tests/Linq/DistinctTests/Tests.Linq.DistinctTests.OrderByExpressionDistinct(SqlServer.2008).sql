-- SqlServer.2008

SELECT
	[x_1].[MiddleName],
	[x_1].[LastName]
FROM
	(
		SELECT DISTINCT
			[x].[MiddleName],
			NULLIF([x].[LastName], N'Pupkin') as [LastName]
		FROM
			[Person] [x]
	) [x_1]
ORDER BY
	Coalesce([x_1].[MiddleName], N'-2') DESC

-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

