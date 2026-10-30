-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Sum_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM([t1].[Sum_1]) as [Sum_1]
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
		) [t2]
ORDER BY
	[p].[ParentID]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

