-- SqlCe
SELECT
	[grp_1].[Key_1],
	[t2].[Scalar],
	[t4].[Anonymous]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [grp_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Scalar]
			FROM
				(
					SELECT DISTINCT
						[x].[ChildID] as [Scalar]
					FROM
						[GrandChild] [x]
					WHERE
						([grp_1].[Key_1] = [x].[ParentID] OR [grp_1].[Key_1] IS NULL AND [x].[ParentID] IS NULL) AND
						[x].[ChildID] > 20
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Anonymous]
			FROM
				(
					SELECT DISTINCT
						[x_1].[ChildID]
					FROM
						[GrandChild] [x_1]
					WHERE
						([grp_1].[Key_1] = [x_1].[ParentID] OR [grp_1].[Key_1] IS NULL AND [x_1].[ParentID] IS NULL) AND
						[x_1].[ChildID] > 20
				) [t3]
		) [t4]
ORDER BY
	[grp_1].[Key_1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

