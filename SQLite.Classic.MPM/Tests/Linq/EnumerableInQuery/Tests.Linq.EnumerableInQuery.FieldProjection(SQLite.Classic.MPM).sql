-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			[t1].[ID]
		FROM
			(
				SELECT NULL [ID] WHERE 1 = 0
				UNION ALL
				VALUES
					(1), (2), (3), (4)
				) [t1]
		WHERE
			[t1].[ID] = [x].[PersonID]
		LIMIT 1
	)
FROM
	[Person] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

