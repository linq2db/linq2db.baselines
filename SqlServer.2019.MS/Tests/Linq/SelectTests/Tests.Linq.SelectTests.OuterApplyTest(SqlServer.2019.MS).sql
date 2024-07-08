﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t6].[ParentID],
	[t6].[Value1],
	[t6].[ParentID_1],
	[t6].[ChildID],
	[t6].[Any_1],
	[t6].[ChildID_1],
	[t6].[ParentID_2],
	[t6].[ChildID_2],
	[t6].[ParentID_3],
	[t6].[ChildID_3],
	[t6].[ParentID_4],
	[t6].[ChildID_4],
	[t6].[ParentID_5],
	[t6].[ChildID_5],
	[t6].[ParentID_6]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1],
			[c1_1].[ParentID] as [ParentID_1],
			[c1_1].[ChildID],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [c_6]
				WHERE
					[c_6].[ChildID] > 2
			), 1, 0) as [Any_1],
			[t1].[ChildID] as [ChildID_1],
			[t1].[ParentID] as [ParentID_2],
			[t2].[ChildID] as [ChildID_2],
			[t2].[ParentID] as [ParentID_3],
			[t3].[ChildID] as [ChildID_3],
			[t3].[ParentID] as [ParentID_4],
			[t4].[ChildID] as [ChildID_4],
			[t4].[ParentID] as [ParentID_5],
			[t5].[ChildID] as [ChildID_5],
			[t5].[ParentID] as [ParentID_6]
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (1)
						[c1].[ParentID],
						[c1].[ChildID]
					FROM
						[Child] [c1]
					WHERE
						[c1].[ParentID] = [p].[ParentID]
				) [c1_1]
				OUTER APPLY (
					SELECT TOP (1)
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ChildID] > 2 AND [c_1].[ParentID] >= [p].[ParentID]
				) [t1]
				LEFT JOIN (
					SELECT TOP (1)
						[c_2].[ChildID],
						[c_2].[ParentID]
					FROM
						[Child] [c_2]
					WHERE
						[c_2].[ChildID] > 2 AND [c_2].[ParentID] >= 2
				) [t2] ON 1=1
				OUTER APPLY (
					SELECT TOP (1)
						[c_3].[ChildID],
						[c_3].[ParentID]
					FROM
						[Child] [c_3]
					WHERE
						[c_3].[ChildID] > 2 AND [c_3].[ParentID] >= [p].[ParentID]
				) [t3]
				OUTER APPLY (
					SELECT TOP (1)
						[c_4].[ChildID],
						[c_4].[ParentID]
					FROM
						[Child] [c_4]
					WHERE
						[c_4].[ChildID] > 2 AND [c_4].[ParentID] >= [p].[ParentID]
				) [t4]
				OUTER APPLY (
					SELECT TOP (1)
						[c_5].[ChildID],
						[c_5].[ParentID]
					FROM
						[Child] [c_5]
					WHERE
						[c_5].[ChildID] > 2 AND [c_5].[ParentID] >= [p].[ParentID]
				) [t5]
	) [t6]
ORDER BY
	[t6].[ParentID]

