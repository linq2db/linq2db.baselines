-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Key_1],
	[r].[Count_1]
FROM
	(
		SELECT
			[g_1].[FirstName] as [Key_1],
			COUNT(*) as [Count_1]
		FROM
			[Person] [g_1]
		GROUP BY
			[g_1].[FirstName]
	) [r]
WHERE
	[r].[Key_1] = 'John'

