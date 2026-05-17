-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%Joh%' ESCAPE '~' AND [p].[PersonID] = 1

-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%Joh%' ESCAPE '~' AND [p].[PersonID] = 1

