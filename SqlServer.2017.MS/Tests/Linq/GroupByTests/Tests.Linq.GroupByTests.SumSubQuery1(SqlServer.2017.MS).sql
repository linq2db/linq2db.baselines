BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	SUM([g_1].[ParentID] - 2)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 2 > @n
GROUP BY
	[g_1].[ParentID] + 1,
	[g_1].[ChildID]

