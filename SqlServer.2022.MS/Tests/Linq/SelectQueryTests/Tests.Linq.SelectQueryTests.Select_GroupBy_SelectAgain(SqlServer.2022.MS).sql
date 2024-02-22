BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	[summary].[LastName],
	[summary].[Count_1],
	[summary].[Max_1]
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
ORDER BY
	1
OFFSET @take ROWS FETCH NEXT @take ROWS ONLY 

