-- SQLite.Classic SQLite
DECLARE @CurrentUserId Integer -- Int32
SET     @CurrentUserId = 1

SELECT
	COUNT(*)
FROM
	[EntityWithUser1] [x]
WHERE
	[x].[UserId] = @CurrentUserId

