﻿BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(11))
FROM
	[InstanceClass] [t1]

