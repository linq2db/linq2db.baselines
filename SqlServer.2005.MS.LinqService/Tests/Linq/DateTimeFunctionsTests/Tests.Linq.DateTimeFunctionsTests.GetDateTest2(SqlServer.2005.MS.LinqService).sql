BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[g_2].[c1],
	Count(*)
FROM
	(
		SELECT
			Cast(Floor(Cast(CURRENT_TIMESTAMP as Float)) as DateTime) as [c1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
		WHERE
			[g_1].[Value1] > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

