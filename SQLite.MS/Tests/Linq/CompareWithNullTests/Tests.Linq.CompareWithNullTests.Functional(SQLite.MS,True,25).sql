﻿BeforeExecute
-- SQLite.MS SQLite

/* x => (int?)x.CEnumA != (int?)x.CEnumB */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[CEnumA] <> [x].[CEnumB] OR [x].[CEnumA] IS NULL AND [x].[CEnumB] IS NOT NULL OR
	[x].[CEnumA] IS NOT NULL AND [x].[CEnumB] IS NULL
ORDER BY
	[x].[Id]

