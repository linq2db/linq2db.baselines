-- SQLite.MS SQLite
DECLARE @args Integer -- Int32
SET     @args = 1

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @args
	) [p]

-- SQLite.MS SQLite
DECLARE @args Integer -- Int32
SET     @args = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @args
	) [p]

