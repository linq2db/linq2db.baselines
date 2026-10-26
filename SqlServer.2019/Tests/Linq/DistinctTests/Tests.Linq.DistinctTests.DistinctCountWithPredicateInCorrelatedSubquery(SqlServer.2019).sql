-- SqlServer.2019
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x].[ChildID]
				FROM
					[GrandChild] [x]
				WHERE
					[x].[ParentID] = [p].[ParentID] AND [x].[ChildID] > 20
			) [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_1].[ChildID] as [Scalar]
				FROM
					[GrandChild] [x_1]
				WHERE
					[x_1].[ParentID] = [p].[ParentID] AND [x_1].[ChildID] > 20
			) [t2]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

