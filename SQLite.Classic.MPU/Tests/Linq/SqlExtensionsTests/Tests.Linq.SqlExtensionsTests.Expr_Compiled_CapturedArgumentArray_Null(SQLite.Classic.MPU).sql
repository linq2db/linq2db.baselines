-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @args Integer -- Int32
SET     @args = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @args

