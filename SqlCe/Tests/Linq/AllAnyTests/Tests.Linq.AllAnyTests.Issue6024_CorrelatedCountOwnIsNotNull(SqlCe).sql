-- SqlCe
SELECT
	[p].[ParentID],
	[t1].[Cnt]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Cnt]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ParentID] = [p].[ParentID] AND [g_1].[ChildID] IS NOT NULL
		) [t1]
ORDER BY
	[p].[ParentID]

