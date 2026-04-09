-- SqlCe

SELECT
	[g_2].[isValueAvailable],
	[g_2].[ParentID],
	[g_2].[Value_1],
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[ChildID] % 2 = 0 THEN 1
				ELSE 0
			END as [isValueAvailable],
			[g_1].[ParentID],
			NULL as [Value_1]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ChildID] % 2 = 0
	) [g_2]
GROUP BY
	[g_2].[isValueAvailable],
	[g_2].[ParentID],
	[g_2].[Value_1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

