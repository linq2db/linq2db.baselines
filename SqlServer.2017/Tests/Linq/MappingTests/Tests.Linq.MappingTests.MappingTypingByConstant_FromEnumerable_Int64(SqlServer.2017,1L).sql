-- SqlServer.2017

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(1 AS BigInt))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

-- SqlServer.2017

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648 AS BigInt))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

