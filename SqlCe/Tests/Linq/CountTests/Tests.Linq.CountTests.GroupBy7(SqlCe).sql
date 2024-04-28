BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1],
	MAX([g_1].[ChildID]) as [MAX_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

