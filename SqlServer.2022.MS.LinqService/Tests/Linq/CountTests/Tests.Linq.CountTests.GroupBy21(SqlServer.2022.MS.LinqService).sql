BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	Count(IIF([g_1].[ParentID] + 1 < 3, 1, NULL))
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 2 > @n
GROUP BY
	[g_1].[ParentID] + 1,
	[g_1].[ChildID]

