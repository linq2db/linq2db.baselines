﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[text1],
	matchinfo([r].[FTS3_TABLE])
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'found'
ORDER BY
	[r].[rowid]

