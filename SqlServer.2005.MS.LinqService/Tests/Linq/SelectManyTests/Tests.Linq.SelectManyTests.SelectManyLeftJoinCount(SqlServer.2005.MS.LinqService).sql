﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]

