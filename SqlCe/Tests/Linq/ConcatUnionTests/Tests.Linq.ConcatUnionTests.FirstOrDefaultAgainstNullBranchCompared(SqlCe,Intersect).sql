-- SqlCe
SELECT DISTINCT
	[p].[ParentID],
	[t1].[ParentID] as [ParentID_1],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
			ORDER BY
				[c_1].[ChildID]
		) [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p_1]
		WHERE
			[p].[ParentID] = [p_1].[ParentID] AND [t1].[ParentID] IS NULL AND
			[t1].[ChildID] IS NULL
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

