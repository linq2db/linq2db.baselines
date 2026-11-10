-- SqlCe
SELECT DISTINCT
	[t2].[ParentID],
	[t2].[ParentID_1],
	[t2].[ParentID_2],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[c_1].[ParentID] as [ParentID_1],
			[c_1].[ParentID] as [ParentID_2],
			[c_1].[ChildID]
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [t1].[ParentID]
		UNION
		SELECT
			[p].[ParentID],
			NULL as [ParentID_1],
			NULL as [ParentID_2],
			NULL as [ChildID]
		FROM
			[Parent] [p]
	) [t2]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p_1]
		WHERE
			[t2].[ParentID] = [p_1].[ParentID] AND
			[t2].[ParentID_1] IS NULL AND
			[t2].[ParentID_2] IS NULL AND
			[t2].[ChildID] IS NULL
	)

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

