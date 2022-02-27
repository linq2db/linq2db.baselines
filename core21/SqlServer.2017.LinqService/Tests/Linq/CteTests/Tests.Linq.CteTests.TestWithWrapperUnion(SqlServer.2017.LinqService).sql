BeforeExecute
-- SqlServer.2017

WITH [CTE_1]
(
	[ParentID],
	[ChildID],
	[ParentID_1],
	[Value1]
)
AS
(
	SELECT
		[child_2].[ParentID],
		[child_2].[ChildID],
		[a_Parent].[ParentID],
		[a_Parent].[Value1]
	FROM
		[Child] [child_2]
			LEFT JOIN [Parent] [a_Parent] ON [child_2].[ParentID] = [a_Parent].[ParentID]
)
SELECT
	[t2].[Parent],
	[t2].[Parent_1],
	[t2].[Child],
	[t2].[Child_1]
FROM
	(
		SELECT
			[child_3].[ParentID] as [Child],
			[child_3].[ChildID] as [Child_1],
			[a_Parent_1].[ParentID] as [Parent],
			[a_Parent_1].[Value1] as [Parent_1]
		FROM
			[Child] [child_3]
				LEFT JOIN [Parent] [a_Parent_1] ON [child_3].[ParentID] = [a_Parent_1].[ParentID]
		UNION
		SELECT
			[t1].[ParentID] as [Child],
			[t1].[ChildID] as [Child_1],
			[t1].[ParentID_1] as [Parent],
			[t1].[Value1] as [Parent_1]
		FROM
			[CTE_1] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2017

WITH [CTE_1]
(
	[ParentID],
	[ChildID],
	[ParentID_1],
	[Value1]
)
AS
(
	SELECT
		[child_2].[ParentID],
		[child_2].[ChildID],
		[a_Parent].[ParentID],
		[a_Parent].[Value1]
	FROM
		[Child] [child_2]
			LEFT JOIN [Parent] [a_Parent] ON [child_2].[ParentID] = [a_Parent].[ParentID]
)
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID_1],
	[t1].[Value1]
FROM
	[CTE_1] [t1]
UNION
SELECT
	[child_3].[ParentID],
	[child_3].[ChildID],
	[a_Parent_1].[ParentID],
	[a_Parent_1].[Value1]
FROM
	[Child] [child_3]
		LEFT JOIN [Parent] [a_Parent_1] ON [child_3].[ParentID] = [a_Parent_1].[ParentID]

