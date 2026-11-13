-- SqlCe
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[x].[ChildID]
					FROM
						[GrandChild] [x]
					WHERE
						[x].[ParentID] = [p].[ParentID] AND [x].[ChildID] > 20
				) [t1]
		) [t2]
WHERE
	[t2].[Count_1] > 1
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

