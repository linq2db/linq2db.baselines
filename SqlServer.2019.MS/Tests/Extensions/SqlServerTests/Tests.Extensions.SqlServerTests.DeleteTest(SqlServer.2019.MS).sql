﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

