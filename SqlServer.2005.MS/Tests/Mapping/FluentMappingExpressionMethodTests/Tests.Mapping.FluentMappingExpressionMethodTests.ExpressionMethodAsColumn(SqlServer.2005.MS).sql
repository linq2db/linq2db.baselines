﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value],
	N'M' + CAST([t1].[Id] AS NVarChar(Max))
FROM
	[InstanceClass] [t1]

