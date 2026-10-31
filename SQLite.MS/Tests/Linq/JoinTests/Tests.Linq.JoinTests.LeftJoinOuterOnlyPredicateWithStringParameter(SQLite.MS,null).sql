-- SQLite.MS SQLite
SELECT
	[p].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		LEFT JOIN [Doctor] [d] ON 1 = 0

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

