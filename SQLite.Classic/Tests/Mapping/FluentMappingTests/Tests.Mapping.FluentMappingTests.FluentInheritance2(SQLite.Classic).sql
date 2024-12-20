BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Gender],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[FirstName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND [t1].[Gender] = 'M'
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Gender],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[FirstName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 3 AND [t1].[Gender] = 'F'
LIMIT 1

