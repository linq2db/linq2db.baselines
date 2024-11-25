﻿BeforeExecute
-- SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Parent] [param]
		WHERE
			[param].[ParentID] = [c_1].[ParentID] AND Coalesce([param].[Value1], -1) = [c_1].[ParentID]
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

