BeforeExecute
-- SqlCe

SELECT
	[g_1].[ParentID] as [Field],
	[g_1].[ChildID] as [Field_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID],
	[g_1].[ChildID]

