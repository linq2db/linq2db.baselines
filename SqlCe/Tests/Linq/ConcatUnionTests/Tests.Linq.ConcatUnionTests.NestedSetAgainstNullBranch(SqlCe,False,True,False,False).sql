-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ParentID_1],
	[t1].[ParentID_1] as [ParentID_2],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[p].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID],
			NULL as [ParentID_1],
			NULL as [ChildID]
		FROM
			[Parent] [p_1]
	) [t1]
UNION
SELECT
	[p_2].[ParentID],
	NULL as [ParentID_1],
	NULL as [ParentID_2],
	NULL as [ChildID]
FROM
	[Parent] [p_2]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

