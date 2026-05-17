-- SqlServer.2019

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
	Coalesce([t1].[MiddleName], N'-1')

-- SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

