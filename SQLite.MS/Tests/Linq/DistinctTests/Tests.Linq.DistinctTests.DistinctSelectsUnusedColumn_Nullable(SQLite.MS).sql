﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[a_Lvl3AllNull].[Id],
			[a_Lvl3AllNull].[Value] as [Value_1]
		FROM
			[Level1] [p]
				LEFT JOIN [Level2] [a_Lvl2] ON [p].[Id] = [a_Lvl2].[FK2]
				LEFT JOIN [Level3AllNull] [a_Lvl3AllNull] ON [a_Lvl2].[FK3] = [a_Lvl3AllNull].[Id]
		WHERE
			[a_Lvl3AllNull].[Id] = 21
	) [t1]
LIMIT 2

