BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1],
	MAX([g_1].[ChildID]) as [Max_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

