﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

WITH [CTE_1] ([Child_ParentID], [Child_ChildID])
AS
(
	SELECT
		[child_1].[ParentID],
		[child_1].[ChildID]
	FROM
		[Child] [child_1]
)
SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[Child_ParentID],
	[c_1].[Child_ChildID]
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_1] ON [p].[ParentID] = [c_1].[Child_ParentID]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

