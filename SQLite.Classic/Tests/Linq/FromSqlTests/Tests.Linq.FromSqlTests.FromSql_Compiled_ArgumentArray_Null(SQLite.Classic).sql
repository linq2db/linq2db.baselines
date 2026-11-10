-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = NULL
	) [p]

-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) [p]

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = NULL
	) [p]

