﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

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
			(
				SELECT TOP (100)
					[p].[ParentID],
					[p].[Value1] as [Value_1]
				FROM
					[Parent] [p]
			) [param]
		WHERE
			[param].[ParentID] = [c_1].[ParentID] AND [param].[Value_1] = [c_1].[ParentID]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

