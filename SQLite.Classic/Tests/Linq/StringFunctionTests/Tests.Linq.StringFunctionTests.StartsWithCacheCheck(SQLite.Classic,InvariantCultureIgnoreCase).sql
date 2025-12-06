-- SQLite.Classic SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND [p].[PersonID] = 1

-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' AND
	[p].[PersonID] = 1

