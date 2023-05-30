BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck_2_2 NVarChar(4) -- String
SET     @nameToCheck_2_2 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_2_2 ESCAPE '~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @nameToCheck_2_2 NVarChar(4) -- String
SET     @nameToCheck_2_2 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck_2_2 ESCAPE '~' AND
	[p].[PersonID] = 1

