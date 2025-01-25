BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] + 1 > @n
	) [g_2]
GROUP BY
	[g_2].[ParentID]

