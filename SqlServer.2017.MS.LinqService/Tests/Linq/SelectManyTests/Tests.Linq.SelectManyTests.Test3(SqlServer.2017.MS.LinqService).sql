﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		CROSS JOIN [Person] [t]

