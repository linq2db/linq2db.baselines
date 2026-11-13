-- SqlCe
SELECT
	[p].[ParentID],
	[t2].[Anonymous],
	[t4].[Scalar]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Anonymous]
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
		OUTER APPLY (
			SELECT
				COUNT(*) as [Scalar]
			FROM
				(
					SELECT DISTINCT
						[x_1].[ChildID] as [Scalar]
					FROM
						[GrandChild] [x_1]
					WHERE
						[x_1].[ParentID] = [p].[ParentID] AND [x_1].[ChildID] > 20
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

