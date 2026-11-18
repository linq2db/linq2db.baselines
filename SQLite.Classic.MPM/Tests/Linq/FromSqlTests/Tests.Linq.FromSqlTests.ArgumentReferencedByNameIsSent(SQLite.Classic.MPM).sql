-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) [p]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @byName Integer -- Int32
SET     @byName = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p OR PersonID = @byName
	) [p]
ORDER BY
	[p].[PersonID]

