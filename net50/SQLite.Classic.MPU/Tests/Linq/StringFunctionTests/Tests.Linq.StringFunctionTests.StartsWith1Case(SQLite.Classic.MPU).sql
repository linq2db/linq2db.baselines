BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'Jo%' ESCAPE '~' AND
	Substr([p].[FirstName], 1, 2) = 'Jo'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'jo%' ESCAPE '~' AND
	Substr([p].[FirstName], 1, 2) = 'jo'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' ESCAPE '~' OR Substr([p].[FirstName], 1, 2) <> 'Jo') AND
	[p].[PersonID] = 1

