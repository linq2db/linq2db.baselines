BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Substr([p].[FirstName], 1, Length(@nameToCheck_1)) = @nameToCheck_1 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Substr([p].[FirstName], 1, Length(@nameToCheck_1)) <> @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Substr([p].[FirstName], 1, Length(@nameToCheck_1)) = @nameToCheck_1 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Substr([p].[FirstName], 1, Length(@nameToCheck_1)) <> @nameToCheck_1) AND
	[p].[PersonID] = 1

