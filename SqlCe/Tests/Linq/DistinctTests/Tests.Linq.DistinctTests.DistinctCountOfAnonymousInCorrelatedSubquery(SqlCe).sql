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
						[x].[ChildID]
					FROM
						[GrandChild] [x]
					WHERE
						[x].[ParentID] = [p].[ParentID] AND [x].[ChildID] IS NOT NULL
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

