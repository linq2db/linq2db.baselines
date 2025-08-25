BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[y].[item]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT NULL [item] WHERE 1 = 0
			UNION ALL
			VALUES
				('M'), ('F'), ('U'), ('O')
			) [y]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

