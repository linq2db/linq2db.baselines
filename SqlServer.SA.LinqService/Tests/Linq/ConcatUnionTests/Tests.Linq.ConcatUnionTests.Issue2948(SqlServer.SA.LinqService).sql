BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY [p].[PersonID] ORDER BY [p].[PersonID]) as [Rank],
			[p].[PersonID] as [Id],
			[p].[FirstName] as [Name]
		FROM
			[Person] [p]
	) [t1]
WHERE
	[t1].[Rank] = 1 AND [t1].[Id] <> 2
UNION ALL
SELECT
	[t2].[ID],
	[t2].[FirstName]
FROM
	(
		SELECT TOP (@take)
			[x].[ID],
			[x].[FirstName]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [p_1].[PersonID] ORDER BY [p_1].[PersonID]) as [Rank],
					[p_1].[PersonID] as [ID],
					[p_1].[FirstName]
				FROM
					[Person] [p_1]
			) [x]
		WHERE
			[x].[Rank] = 1 AND [x].[ID] = 2
		ORDER BY
			[x].[FirstName] DESC
	) [t2]
UNION ALL
SELECT
	[t3].[ID],
	[t3].[FirstName]
FROM
	(
		SELECT TOP (@take_1)
			[x_1].[ID],
			[x_1].[FirstName]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [p_2].[PersonID] ORDER BY [p_2].[PersonID]) as [Rank],
					[p_2].[PersonID] as [ID],
					[p_2].[FirstName]
				FROM
					[Person] [p_2]
			) [x_1]
		WHERE
			[x_1].[Rank] = 1 AND [x_1].[ID] <> 3
		ORDER BY
			[x_1].[FirstName]
	) [t3]

