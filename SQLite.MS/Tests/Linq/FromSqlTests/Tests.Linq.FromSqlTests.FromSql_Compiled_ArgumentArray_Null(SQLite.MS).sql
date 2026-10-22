-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = NULL
	) [p]

-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) [p]

-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = NULL
	) [p]

