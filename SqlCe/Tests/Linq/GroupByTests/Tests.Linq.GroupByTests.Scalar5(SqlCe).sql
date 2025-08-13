BeforeExecute
-- SqlCe

SELECT
	MAX([g_1].[ParentID]) as [MAX_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

