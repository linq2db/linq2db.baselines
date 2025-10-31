BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[g_2].[ChildId],
	[g_2].[ParentId],
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			1 as [ChildId],
			2 as [ParentId]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[ChildId],
	[g_2].[ParentId]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

