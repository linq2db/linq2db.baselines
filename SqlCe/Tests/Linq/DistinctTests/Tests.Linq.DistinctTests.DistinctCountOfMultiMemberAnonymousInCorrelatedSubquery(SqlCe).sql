-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Count_1],
	[t4].[LongCount]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[g_1].[ChildID]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ParentID] = [p].[ParentID]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [LongCount]
			FROM
				(
					SELECT DISTINCT
						[g_2].[ChildID],
						[g_2].[GrandChildID]
					FROM
						[GrandChild] [g_2]
					WHERE
						[g_2].[ParentID] = [p].[ParentID]
				) [t3]
		) [t4]
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

