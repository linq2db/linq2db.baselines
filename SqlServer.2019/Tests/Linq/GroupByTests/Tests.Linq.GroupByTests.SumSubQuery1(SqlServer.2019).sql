BeforeExecute
-- SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	SUM([t1].[ParentID] - 3)
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] + 2 > @n
	) [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

