﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

