BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Count_2],
	[t1].[Key_1],
	[t1].[Count_1],
	[t1].[HighestFirstName]
FROM
	(
		SELECT
			COUNT(*) as [Count_1],
			[group_1].[LastName] as [Key_1],
			MAX([group_1].[FirstName]) as [HighestFirstName],
			COUNT(*) OVER() as [Count_2]
		FROM
			[Person] [group_1]
		GROUP BY
			[group_1].[LastName]
	) [t1]
WHERE
	[t1].[Count_1] > 5
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

