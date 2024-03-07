BeforeExecute
-- SqlCe

SELECT
	Sum([g_1].[ChildID]) as [Sum_1],
	Min([g_1].[ChildID]) as [Min_1],
	Max([g_1].[ChildID]) as [Max_1],
	Avg([g_1].[ChildID]) as [Average],
	Count(*) as [Count_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

