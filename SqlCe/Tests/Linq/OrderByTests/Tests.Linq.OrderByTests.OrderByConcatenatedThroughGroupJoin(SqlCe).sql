-- SqlCe
SELECT
	[t2].[ParentID],
	[t2].[ChildID],
	[t1].[Cnt]
FROM
	[Child] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Cnt]
			FROM
				[Parent] [p]
			WHERE
				[t2].[ParentID] = [p].[ParentID]
		) [t1]
ORDER BY
	[t2].[ParentID],
	[t2].[ChildID] DESC

