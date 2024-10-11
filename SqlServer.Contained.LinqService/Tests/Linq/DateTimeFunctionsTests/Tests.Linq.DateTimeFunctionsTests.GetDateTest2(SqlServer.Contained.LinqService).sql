BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CAST(CURRENT_TIMESTAMP AS Date) as [Key_1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
		WHERE
			[g_1].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[Key_1]

