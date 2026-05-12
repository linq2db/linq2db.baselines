-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[p_1].[ParentID]
				FROM
					[Parent] [p_1]
				WHERE
					[p_1].[ParentID] <= 2
				UNION
				SELECT
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] >= 3
			) [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)
ORDER BY
	[p].[ParentID]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

