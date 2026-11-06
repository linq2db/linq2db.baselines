-- SqlCe
SELECT
	[g_2].[Key_1],
	[t2].[Count_1]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID] as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
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
						[g_2].[Key_1] = [c_1].[ParentID]
				) [t1]
		) [t2]
ORDER BY
	[g_2].[Key_1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

