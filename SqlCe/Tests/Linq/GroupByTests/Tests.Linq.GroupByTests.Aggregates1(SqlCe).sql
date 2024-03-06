BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1],
	Sum([g_1].[ChildID]) as [Sum_1],
	Min([g_1].[ChildID]) as [Min_1],
	Max([g_1].[ChildID]) as [Max_1],
	Avg([g_1].[ChildID]) as [Average]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

