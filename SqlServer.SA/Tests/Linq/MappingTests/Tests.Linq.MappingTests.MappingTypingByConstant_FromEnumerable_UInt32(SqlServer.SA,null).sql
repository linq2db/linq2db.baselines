-- SqlServer.SA SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(NULL AS BigInt))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

-- SqlServer.SA SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648 AS BigInt))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

