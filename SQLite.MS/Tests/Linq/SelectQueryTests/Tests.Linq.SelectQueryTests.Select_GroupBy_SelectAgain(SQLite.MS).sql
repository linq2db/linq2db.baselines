BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
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
LIMIT @take OFFSET @take

