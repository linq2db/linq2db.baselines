﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS4_TABLE] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[FTS4_TABLE] [r_1]
		WHERE
			[r_1].[FTS4_TABLE] MATCH 'something' AND ([r].[rowid] = [r_1].[rowid] OR [r].[rowid] IS NULL AND [r_1].[rowid] IS NULL)
	)

