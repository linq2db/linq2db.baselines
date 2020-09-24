BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	1
FROM
	[Person] [_]
LIMIT @take OFFSET @skip

