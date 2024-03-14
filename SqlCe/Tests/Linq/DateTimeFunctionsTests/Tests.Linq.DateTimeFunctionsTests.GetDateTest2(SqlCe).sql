BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[g_2].[c1] as [Key_1],
	Count(*) as [Count_1]
FROM
	(
		SELECT
			Cast(Floor(Cast(GetDate() as Float)) as DateTime) as [c1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
		WHERE
			[g_1].[Value1] > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

