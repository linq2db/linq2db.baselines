﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 1

SELECT
	COUNT(*)
FROM
	[EntityWithUser3] [x]
WHERE
	[x].[UserId] = @CurrentUserId

