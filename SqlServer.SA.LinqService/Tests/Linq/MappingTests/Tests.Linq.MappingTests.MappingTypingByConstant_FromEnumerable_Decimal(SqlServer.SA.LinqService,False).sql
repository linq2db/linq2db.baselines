BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(1 AS Decimal(1, 0)))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648.123 AS Decimal(13, 3)))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

