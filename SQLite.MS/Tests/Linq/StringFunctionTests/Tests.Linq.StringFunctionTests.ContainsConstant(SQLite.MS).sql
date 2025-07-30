BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

