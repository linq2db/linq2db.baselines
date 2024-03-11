BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[c1],
	[t1].[LastName],
	[t1].[Count_1],
	[t1].[Max_1]
FROM
	(
		SELECT
			COUNT(*) OVER() as [c1],
			[summary].[LastName],
			[summary].[Count_1],
			[summary].[Max_1],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT
					Count(*) as [Count_1],
					[group_1].[LastName],
					Max([group_1].[FirstName]) as [Max_1]
				FROM
					[Person] [group_1]
				GROUP BY
					[group_1].[LastName]
			) [summary]
		WHERE
			[summary].[Count_1] > 5
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= @take

