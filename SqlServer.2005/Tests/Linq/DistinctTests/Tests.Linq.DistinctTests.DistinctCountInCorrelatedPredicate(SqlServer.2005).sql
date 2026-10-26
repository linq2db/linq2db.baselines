-- SqlServer.2005
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
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
	) > 1
ORDER BY
	[p].[ParentID]

-- SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

