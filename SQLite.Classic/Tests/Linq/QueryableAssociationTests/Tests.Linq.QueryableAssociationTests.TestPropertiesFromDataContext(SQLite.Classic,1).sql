﻿BeforeExecute
--  SQLite.Classic SQLite
DECLARE @CurrentUserId  -- Int32
SET     @CurrentUserId = 1

SELECT
	COUNT(*)
FROM
	[EntityWithUser2] [x]
WHERE
	[x].[UserId] = @CurrentUserId

