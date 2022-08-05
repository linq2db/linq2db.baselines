﻿BeforeExecute
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
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'
DECLARE @nameToCheck_2  -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE '~' AND
	Substr([p].[FirstName], 1, @nameToCheck_2) = @nameToCheck AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'
DECLARE @nameToCheck_2  -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_2) <> @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2  -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE '~' AND
	Substr([p].[FirstName], 1, @nameToCheck_2) = @nameToCheck AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2  -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE '~' OR Substr([p].[FirstName], 1, @nameToCheck_2) <> @nameToCheck) AND
	[p].[PersonID] = 1

