﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value],
	'M' + CAST([t1].[Id] AS NVarChar(5461))
FROM
	[InstanceClass] [t1]

