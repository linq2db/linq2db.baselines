BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t1].[ID],
	[t1].[FirstName]
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY [x].[PersonID] ORDER BY [x].[PersonID]) as [Rank],
			[x].[PersonID] as [ID],
			[x].[FirstName]
		FROM
			[Person] [x]
	) [t1]
WHERE
	[t1].[Rank] = 1 AND [t1].[ID] <> 2
UNION ALL
SELECT
	[t2].[ID],
	[t2].[FirstName]
FROM
	(
		SELECT TOP (@take)
			[x_2].[ID],
			[x_2].[FirstName]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [x_1].[PersonID] ORDER BY [x_1].[PersonID]) as [Rank],
					[x_1].[PersonID] as [ID],
					[x_1].[FirstName]
				FROM
					[Person] [x_1]
			) [x_2]
		WHERE
			[x_2].[Rank] = 1 AND [x_2].[ID] = 2
		ORDER BY
			[x_2].[FirstName] DESC
	) [t2]
UNION ALL
SELECT
	[t3].[ID],
	[t3].[FirstName]
FROM
	(
		SELECT TOP (@take_1)
			[x_4].[ID],
			[x_4].[FirstName]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [x_3].[PersonID] ORDER BY [x_3].[PersonID]) as [Rank],
					[x_3].[PersonID] as [ID],
					[x_3].[FirstName]
				FROM
					[Person] [x_3]
			) [x_4]
		WHERE
			[x_4].[Rank] = 1 AND [x_4].[ID] <> 3
		ORDER BY
			[x_4].[FirstName]
	) [t3]

