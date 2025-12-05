-- Sybase.Managed Sybase

SELECT
	[sub].[ParentID],
	[sub].[Value1],
	[sub].[ParentID_1],
	[sub].[Value1_1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			[p2].[ParentID] as [ParentID_1],
			[p2].[Value1] as [Value1_1]
		FROM
			[Parent] [p],
			[Parent] [p2]
	) [sub]
		INNER JOIN [Child] [c_1] ON [sub].[ParentID] = [c_1].[ParentID]
UNION
SELECT
	[sub_1].[ParentID_1],
	[sub_1].[Value1],
	[sub_1].[ParentID],
	[sub_1].[Value1_1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	(
		SELECT
			[p2_1].[ParentID],
			[p_1].[ParentID] as [ParentID_1],
			[p_1].[Value1],
			[p2_1].[Value1] as [Value1_1]
		FROM
			[Parent] [p_1],
			[Parent] [p2_1]
	) [sub_1]
		INNER JOIN [Child] [c_2] ON [sub_1].[ParentID] = [c_2].[ParentID]

