﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p1].[Value1],
	NULL
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[Value1],
	[p2].[ParentID]
FROM
	[Parent] [p2]

