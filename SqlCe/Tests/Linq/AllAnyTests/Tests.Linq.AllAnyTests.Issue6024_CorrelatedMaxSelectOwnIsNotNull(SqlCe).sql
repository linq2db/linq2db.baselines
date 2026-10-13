-- SqlCe
SELECT
	[p].[ParentID],
	[t1].[Max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX(CASE
					WHEN [g_1].[ChildID] IS NOT NULL THEN [g_1].[GrandChildID]
					ELSE 0
				END) as [Max_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ParentID] = [p].[ParentID]
		) [t1]
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

