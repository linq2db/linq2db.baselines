﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	'M' || CAST([t1].[Id] AS NVarChar(11))
FROM
	[InstanceClass] [t1]

