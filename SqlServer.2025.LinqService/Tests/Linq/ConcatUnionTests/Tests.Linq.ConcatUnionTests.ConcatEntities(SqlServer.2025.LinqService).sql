﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] = 2

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

