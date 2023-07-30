BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Substr([p].[FirstName], 1, @nameToCheck_1) = @nameToCheck_2 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1  -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_1) <> @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nameToCheck_2 NVarChar(4) -- String
SET     @nameToCheck_2 = 'JOH%'
DECLARE @nameToCheck_2_1  -- Int32
SET     @nameToCheck_2_1 = 3
DECLARE @nameToCheck_2_2 NVarChar(3) -- String
SET     @nameToCheck_2_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_2 ESCAPE '~' AND
	Substr([p].[FirstName], 1, @nameToCheck_2_1) = @nameToCheck_2_2 AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nameToCheck_2 NVarChar(4) -- String
SET     @nameToCheck_2 = 'JOH%'
DECLARE @nameToCheck_2_1  -- Int32
SET     @nameToCheck_2_1 = 3
DECLARE @nameToCheck_2_2 NVarChar(3) -- String
SET     @nameToCheck_2_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_2 ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_2_1) <> @nameToCheck_2_2) AND
	[p].[PersonID] = 1

