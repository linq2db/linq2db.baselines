﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [t1]
LIMIT @take OFFSET @skip

