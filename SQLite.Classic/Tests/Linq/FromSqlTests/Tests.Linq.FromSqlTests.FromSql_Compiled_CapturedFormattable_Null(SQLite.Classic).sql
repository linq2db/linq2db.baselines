-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE NULL IS NULL AND PersonID = @p
	) [p]

-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE NULL IS NULL AND PersonID = @p
	) [p]

