﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ChildID],
	AVG([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

