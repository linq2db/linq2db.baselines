BeforeExecute
-- SqlServer.2012
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
			ROW_NUMBER() OVER(PARTITION BY [x].[PersonID] ORDER BY [x].[PersonID]) as [Rank],
			[x].[PersonID] as [Id],
			[x].[FirstName] as [Name]
		FROM
			[Person] [x]
	) [t1]
WHERE
	[t1].[Rank] = 1 AND [t1].[Id] <> 2
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Name]
FROM
	(
		SELECT TOP (@take)
			[x_2].[Id],
			[x_2].[Name]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [x_1].[PersonID] ORDER BY [x_1].[PersonID]) as [Rank],
					[x_1].[PersonID] as [Id],
					[x_1].[FirstName] as [Name]
				FROM
					[Person] [x_1]
			) [x_2]
		WHERE
			[x_2].[Rank] = 1 AND [x_2].[Id] = 2
		ORDER BY
			[x_2].[Name] DESC
	) [t2]
UNION ALL
SELECT
	[t3].[Id],
	[t3].[Name]
FROM
	(
		SELECT TOP (@take_1)
			[x_4].[Id],
			[x_4].[Name]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY [x_3].[PersonID] ORDER BY [x_3].[PersonID]) as [Rank],
					[x_3].[PersonID] as [Id],
					[x_3].[FirstName] as [Name]
				FROM
					[Person] [x_3]
			) [x_4]
		WHERE
			[x_4].[Rank] = 1 AND [x_4].[Id] <> 3
		ORDER BY
			[x_4].[Name]
	) [t3]

