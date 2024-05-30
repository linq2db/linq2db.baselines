BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Substr([p].[FirstName], 1, @nameToCheck_1) = @nameToCheck_2 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_1) <> @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Substr([p].[FirstName], 1, @nameToCheck_1) = @nameToCheck_2 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_1) <> @nameToCheck_2) AND
	[p].[PersonID] = 1

