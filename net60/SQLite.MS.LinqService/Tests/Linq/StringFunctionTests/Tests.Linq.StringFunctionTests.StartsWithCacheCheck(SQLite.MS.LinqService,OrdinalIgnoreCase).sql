BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' AND
	[p].[PersonID] = 1

