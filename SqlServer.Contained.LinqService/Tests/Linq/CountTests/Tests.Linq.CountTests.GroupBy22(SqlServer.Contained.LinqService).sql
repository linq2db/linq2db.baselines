BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	COUNT(IIF([g_2].[ParentID] < 3, 1, NULL))
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] + 2 > @n
	) [g_2]
GROUP BY
	[g_2].[ParentID]

