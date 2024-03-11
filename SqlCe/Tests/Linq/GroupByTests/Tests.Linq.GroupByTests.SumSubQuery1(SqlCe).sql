BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	Sum([g_1].[ParentID] - 2) as [Sum_1]
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 2 > @n
GROUP BY
	[g_1].[ParentID] + 1,
	[g_1].[ChildID]

