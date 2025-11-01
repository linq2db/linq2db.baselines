-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 2

SELECT
	COUNT(*)
FROM
	[EntityWithUser2] [x]
WHERE
	[x].[UserId] = @CurrentUserId

