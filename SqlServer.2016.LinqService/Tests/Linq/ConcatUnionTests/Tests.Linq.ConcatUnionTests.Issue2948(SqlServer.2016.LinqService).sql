BeforeExecute
-- SqlServer.2016 (asynchronously)
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
	[t3].[ID],
	[t3].[Name]
FROM
	(
		SELECT TOP (@take)
			[t2].[ID],
			[t2].[Name]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [p_1].[PersonID] ORDER BY [p_1].[PersonID]) as [Rank],
					[p_1].[PersonID] as [ID],
					[p_1].[FirstName] as [Name]
				FROM
					[Person] [p_1]
			) [t2]
		WHERE
			[t2].[Rank] = 1 AND [t2].[ID] = 2
		ORDER BY
			[t2].[Name] DESC
	) [t3]
UNION ALL
SELECT
	[t5].[ID],
	[t5].[Name]
FROM
	(
		SELECT TOP (@take_1)
			[t4].[ID],
			[t4].[Name]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [p_2].[PersonID] ORDER BY [p_2].[PersonID]) as [Rank],
					[p_2].[PersonID] as [ID],
					[p_2].[FirstName] as [Name]
				FROM
					[Person] [p_2]
			) [t4]
		WHERE
			[t4].[Rank] = 1 AND [t4].[ID] <> 3
		ORDER BY
			[t4].[Name]
	) [t5]

