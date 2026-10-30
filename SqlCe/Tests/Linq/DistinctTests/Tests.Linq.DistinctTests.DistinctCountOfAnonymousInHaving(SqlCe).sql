-- SqlCe
SELECT
	[grp_1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [grp_1]
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
						[grp_1].[Key_1] = [g_1].[ParentID] OR [grp_1].[Key_1] IS NULL AND [g_1].[ParentID] IS NULL
				) [t1]
		) [t2]
WHERE
	[t2].[Count_1] > 1
ORDER BY
	[grp_1].[Key_1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

