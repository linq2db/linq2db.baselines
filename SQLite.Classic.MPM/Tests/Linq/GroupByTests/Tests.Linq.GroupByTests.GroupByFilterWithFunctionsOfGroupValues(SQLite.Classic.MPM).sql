-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([g_2].[FirstName]),
	Length([g_2].[MaxLength]),
	[g_2].[KeyRange]
FROM
	(
		SELECT
			[g_1].[FirstName],
			SUM([g_1].[PersonID]) as [Sum_1],
			MAX([g_1].[LastName]) as [MaxLength],
			[g_1].[FirstName] BETWEEN 'A' AND 'K' as [KeyRange]
		FROM
			[Person] [g_1]
		GROUP BY
			[g_1].[FirstName]
	) [g_2]
WHERE
	[g_2].[Sum_1] NOT BETWEEN 2 AND 3

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

