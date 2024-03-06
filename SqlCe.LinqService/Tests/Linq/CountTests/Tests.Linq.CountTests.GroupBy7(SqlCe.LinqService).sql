BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1],
	Max([g_1].[ChildID]) as [Max_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

