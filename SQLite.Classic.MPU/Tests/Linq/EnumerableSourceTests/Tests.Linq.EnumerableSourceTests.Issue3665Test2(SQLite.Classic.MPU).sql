-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[PersonID] + [y].[item]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT NULL [item] WHERE 1 = 0
			UNION ALL
			VALUES
				(0), (1), (2), (3)
			) [y]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

