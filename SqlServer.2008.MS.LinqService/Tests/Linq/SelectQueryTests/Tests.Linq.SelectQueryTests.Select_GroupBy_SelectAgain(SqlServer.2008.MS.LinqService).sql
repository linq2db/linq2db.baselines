BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[c1],
	[t1].[LastName],
	[t1].[Count_1],
	[t1].[MAX_1]
FROM
	(
		SELECT
			[summary].[c1],
			[summary].[LastName],
			[summary].[Count_1],
			[summary].[MAX_1],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT
					COUNT(*) as [Count_1],
					[group_1].[LastName],
					MAX([group_1].[FirstName]) as [MAX_1],
					COUNT(*) OVER() as [c1]
				FROM
					[Person] [group_1]
				GROUP BY
					[group_1].[LastName]
			) [summary]
		WHERE
			[summary].[Count_1] > 5
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

