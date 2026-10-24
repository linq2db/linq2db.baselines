-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @args  -- Int32
SET     @args = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @args
	) [p]

