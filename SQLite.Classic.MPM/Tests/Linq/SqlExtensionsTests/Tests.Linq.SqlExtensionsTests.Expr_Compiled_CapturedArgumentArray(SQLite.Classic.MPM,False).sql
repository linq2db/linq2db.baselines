-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @args Integer -- Int32
SET     @args = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @args

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @args Integer -- Int32
SET     @args = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @args

