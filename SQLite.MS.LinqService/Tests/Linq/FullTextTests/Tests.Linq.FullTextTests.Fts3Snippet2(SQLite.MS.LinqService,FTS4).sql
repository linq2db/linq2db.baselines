﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	snippet([r].[FTS4_TABLE], '_')
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'looking'
LIMIT 2

