-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @CurrentUserId Integer -- Int32
SET     @CurrentUserId = 2

SELECT
	COUNT(*)
FROM
	[EntityWithUser1] [x]
WHERE
	[x].[UserId] = @CurrentUserId

