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
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND [p].[Value1] IS NOT NULL
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
	[t1].[ChildID]
FROM
	[Child] [t1]

