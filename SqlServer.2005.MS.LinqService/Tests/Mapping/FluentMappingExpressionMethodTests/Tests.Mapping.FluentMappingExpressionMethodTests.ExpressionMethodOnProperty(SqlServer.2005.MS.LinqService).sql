﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11)) = CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS VarChar(11))

