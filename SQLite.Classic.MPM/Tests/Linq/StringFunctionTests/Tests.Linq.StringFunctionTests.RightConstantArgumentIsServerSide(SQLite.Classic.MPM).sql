-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUBSTRING('John', MAX(LENGTH('John') - 2, 1))
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

