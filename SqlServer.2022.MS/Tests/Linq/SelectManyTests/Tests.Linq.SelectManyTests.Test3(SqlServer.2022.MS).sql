﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Count(*)
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		CROSS JOIN [Person] [t]

