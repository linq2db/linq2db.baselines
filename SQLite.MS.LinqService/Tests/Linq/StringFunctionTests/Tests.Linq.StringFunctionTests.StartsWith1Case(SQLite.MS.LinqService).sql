BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Jo%' ESCAPE '~' AND Substr([p].[FirstName], 1, 2) = 'Jo' AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'jo%' ESCAPE '~' AND Substr([p].[FirstName], 1, 2) = 'jo' AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' ESCAPE '~' OR Substr([p].[FirstName], 1, 2) <> 'Jo') AND
	[p].[PersonID] = 1

