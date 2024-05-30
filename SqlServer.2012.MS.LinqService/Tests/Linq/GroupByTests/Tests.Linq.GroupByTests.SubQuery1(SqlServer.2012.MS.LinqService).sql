BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[g_2].[c1]
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [c1]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] + 1 > @n
	) [g_2]
GROUP BY
	[g_2].[c1]

