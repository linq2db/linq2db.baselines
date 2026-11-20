-- SQLite.MS SQLite
SELECT
	[g_2].[Key_1],
	[g_2].[Count_1]
FROM
	(
		SELECT
			[g_1].[FirstName] as [Key_1],
			MAX([g_1].[LastName]) as [Max_1],
			COUNT(*) as [Count_1]
		FROM
			[Person] [g_1]
		GROUP BY
			[g_1].[FirstName]
	) [g_2]
WHERE
	Lower([g_2].[Key_1]) = 'john' OR Length([g_2].[Max_1]) > 6

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

