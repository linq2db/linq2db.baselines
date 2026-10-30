-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[p].[ParentID],
	(
		SELECT
			SUM([t1].[Sum_1])
		FROM
			(
				SELECT DISTINCT
					Coalesce([x].[ChildID], 0) as [Sum_1]
				FROM
					[GrandChild] [x]
				WHERE
					[x].[ParentID] = [p].[ParentID]
			) [t1]
		WHERE
			[t1].[Sum_1] > 20
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

