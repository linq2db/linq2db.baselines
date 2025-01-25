BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[summary].[c1],
	[summary].[LastName],
	[summary].[Count_1],
	[summary].[MAX_1]
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
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

