﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[Value]
FROM
	[MainEntityObject] [t1]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [t1].[Id]
ORDER BY
	[c_1].[Id] DESC

