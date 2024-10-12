BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[Count_1],
	[t2].[Key_1],
	[t2].[Count_2],
	[t2].[MAX_1]
FROM
	(
		SELECT
			[t1].[Count_2] as [Count_1],
			[t1].[Key_1],
			[t1].[Count_1] as [Count_2],
			[t1].[MAX_1],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT
					COUNT(*) as [Count_1],
					MAX([group_1].[FirstName]) as [MAX_1],
					[group_1].[LastName] as [Key_1],
					COUNT(*) OVER() as [Count_2]
				FROM
					[Person] [group_1]
				GROUP BY
					[group_1].[LastName]
			) [t1]
		WHERE
			[t1].[Count_1] > 5
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

