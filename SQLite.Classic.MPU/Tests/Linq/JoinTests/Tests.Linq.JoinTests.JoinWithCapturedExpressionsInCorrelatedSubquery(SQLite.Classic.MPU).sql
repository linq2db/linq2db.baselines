-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[PersonID],
	(
		SELECT
			COUNT(*)
		FROM
			[Patient] [pa]
				INNER JOIN [Person] [pe] ON [pa].[PersonID] = [pe].[PersonID]
		WHERE
			[pa].[PersonID] = [p].[PersonID]
	)
FROM
	[Person] [p]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

