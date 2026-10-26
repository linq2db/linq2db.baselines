-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Cnt]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Cnt]
			FROM
				(
					SELECT DISTINCT
						[g_1].[ChildID] as [Cnt]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ParentID] = [p].[ParentID]
				) [t1]
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

