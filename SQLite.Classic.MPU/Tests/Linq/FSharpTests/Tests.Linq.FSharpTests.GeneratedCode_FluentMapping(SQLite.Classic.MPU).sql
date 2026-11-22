-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy],
	[a_FkDoctor0].[PersonID],
	[a_FkDoctor0].[FirstName],
	[a_FkDoctor0].[LastName],
	[a_FkDoctor0].[MiddleName],
	[a_FkDoctor0].[Gender]
FROM
	[Doctor] [t1]
		INNER JOIN [Person] [a_FkDoctor0] ON [t1].[PersonID] = [a_FkDoctor0].[PersonID]
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[MiddleName],
	[e].[Gender]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1
LIMIT 1

