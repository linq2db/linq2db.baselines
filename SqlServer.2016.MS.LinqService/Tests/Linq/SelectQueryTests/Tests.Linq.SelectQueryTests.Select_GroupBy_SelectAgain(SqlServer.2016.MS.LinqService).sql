BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	[x].[Key_1],
	[x].[Count_1],
	[x].[MAX_1]
FROM
	(
		SELECT
			[summary].[Key_1],
			[summary].[Count_1],
			[summary].[MAX_1]
		FROM
			(
				SELECT
					COUNT(*) as [Count_1],
					MAX([group_1].[FirstName]) as [MAX_1],
					[group_1].[LastName] as [Key_1]
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
	) [x]

