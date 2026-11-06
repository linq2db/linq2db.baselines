-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] = [p].[ParentID]
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
	[t1].[ChildID]
FROM
	[Child] [t1]

