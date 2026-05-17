-- SqlCe

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[v].[ParentID]
				FROM
					[Parent] [v]
				ORDER BY
					[v].[ParentID]
				OFFSET 100 ROWS
			) [t1]
		WHERE
			[c_1].[ParentID] = [t1].[ParentID]
	)

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

