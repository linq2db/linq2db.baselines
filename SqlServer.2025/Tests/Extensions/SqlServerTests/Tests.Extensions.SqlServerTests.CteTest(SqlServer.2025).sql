﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

WITH [CTE_1] ([ParentID], [ChildID])
AS
(
	SELECT
		[c_1].[ParentID],
		[c_1].[ChildID]
	FROM
		[Child] [c_1] WITH (NoLock, NoWait)
	WHERE
		[c_1].[ParentID] < -1111
)
SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[CTE_1] [p]
		CROSS JOIN [Child] [c_2] WITH (HoldLock)
OPTION (RECOMPILE, FAST 10)

