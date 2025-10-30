BeforeExecute
-- SqlCe

SELECT
	[g_2].[ParentID],
	MIN([g_2].[ChildID]) as [Min_1],
	COUNT(CASE
		WHEN [g_2].[ChildID] > 25 THEN 1
		ELSE NULL
	END) as [Count_1]
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] > 0
	) [g_2]
GROUP BY
	[g_2].[ParentID]

