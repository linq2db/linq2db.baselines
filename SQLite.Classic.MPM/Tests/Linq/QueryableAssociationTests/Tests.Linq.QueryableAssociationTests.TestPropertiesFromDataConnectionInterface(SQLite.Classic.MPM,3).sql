BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 3

SELECT
	COUNT(*)
FROM
	[EntityWithUser3] [x]
WHERE
	[x].[UserId] = @CurrentUserId

