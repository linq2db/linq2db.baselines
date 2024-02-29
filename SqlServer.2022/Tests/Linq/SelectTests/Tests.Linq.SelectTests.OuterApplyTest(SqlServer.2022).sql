BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1
DECLARE @take_3 Int -- Int32
SET     @take_3 = 1
DECLARE @take_4 Int -- Int32
SET     @take_4 = 1
DECLARE @take_5 Int -- Int32
SET     @take_5 = 1

SELECT
	[t7].[Parent],
	[t7].[Parent_1],
	[t7].[Child],
	[t7].[Child_1],
	[t7].[Any_1],
	[t7].[Child1],
	[t7].[Child1_1],
	[t7].[Child2],
	[t7].[Child2_1],
	[t7].[ChildID],
	[t7].[ParentID],
	[t7].[ChildID_1],
	[t7].[ParentID_1],
	[t7].[ChildID_2],
	[t7].[ParentID_2]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Parent],
			[p].[Value1] as [Parent_1],
			[t1].[ParentID] as [Child],
			[t1].[ChildID] as [Child_1],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ChildID] > 2
			), 1, 0) as [Any_1],
			[t2].[ChildID] as [Child1],
			[t2].[ParentID] as [Child1_1],
			[t3].[ChildID] as [Child2],
			[t3].[ParentID] as [Child2_1],
			[t4].[ChildID],
			[t4].[ParentID],
			[t5].[ChildID] as [ChildID_1],
			[t5].[ParentID] as [ParentID_1],
			[t6].[ChildID] as [ChildID_2],
			[t6].[ParentID] as [ParentID_2]
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (@take)
						[c_2].[ParentID],
						[c_2].[ChildID]
					FROM
						[Child] [c_2]
					WHERE
						[c_2].[ParentID] = [p].[ParentID]
				) [t1]
				OUTER APPLY (
					SELECT TOP (@take_1)
						[c_3].[ChildID],
						[c_3].[ParentID]
					FROM
						[Child] [c_3]
					WHERE
						[c_3].[ChildID] > 2 AND [c_3].[ParentID] >= [p].[ParentID]
				) [t2]
				OUTER APPLY (
					SELECT TOP (@take_2)
						[c_4].[ChildID],
						[c_4].[ParentID]
					FROM
						[Child] [c_4]
					WHERE
						[c_4].[ChildID] > 2 AND [c_4].[ParentID] >= 2
				) [t3]
				OUTER APPLY (
					SELECT TOP (@take_3)
						[c_5].[ChildID],
						[c_5].[ParentID]
					FROM
						[Child] [c_5]
					WHERE
						[c_5].[ChildID] > 2 AND [c_5].[ParentID] >= [p].[ParentID]
				) [t4]
				OUTER APPLY (
					SELECT TOP (@take_4)
						[c_6].[ChildID],
						[c_6].[ParentID]
					FROM
						[Child] [c_6]
					WHERE
						[c_6].[ChildID] > 2 AND [c_6].[ParentID] >= [p].[ParentID]
				) [t5]
				OUTER APPLY (
					SELECT TOP (@take_5)
						[c_7].[ChildID],
						[c_7].[ParentID]
					FROM
						[Child] [c_7]
					WHERE
						[c_7].[ChildID] > 2 AND [c_7].[ParentID] >= [p].[ParentID]
				) [t6]
	) [t7]
ORDER BY
	[t7].[Parent]

