-- SqlServer.2025
SELECT
	[p].[ParentID],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]
UNION
SELECT
	[t1].[ParentID],
	[t1].[ParentID_1],
	[t1].[ParentID_1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p_1].[ParentID],
			[p_1].[ParentID] as [ParentID_1],
			[p_1].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p_1]
		UNION ALL
		SELECT
			[p_2].[ParentID],
			NULL as [ParentID_1],
			NULL as [ChildID]
		FROM
			[Parent] [p_2]
	) [t1]

-- SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

