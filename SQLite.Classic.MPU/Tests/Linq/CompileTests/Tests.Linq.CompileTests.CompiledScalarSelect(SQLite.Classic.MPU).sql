-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] >= @p
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] >= @p
	)

