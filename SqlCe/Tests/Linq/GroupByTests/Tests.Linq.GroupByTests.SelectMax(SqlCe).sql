BeforeExecute
-- SqlCe

SELECT
	MAX([g_1].[ChildID]) as [Max_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

