-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[PersonID]
FROM
	[Patient] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[PersonID],
	[x].[FirstName]
FROM
	[Person] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[PersonID],
	[person_1].[PersonID],
	[person_1].[FirstName]
FROM
	[Patient] [x]
		INNER JOIN [Person] [person_1] ON [x].[PersonID] = [person_1].[PersonID]

