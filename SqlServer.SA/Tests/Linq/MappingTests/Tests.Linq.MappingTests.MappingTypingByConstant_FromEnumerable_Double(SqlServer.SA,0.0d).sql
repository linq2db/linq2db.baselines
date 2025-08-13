BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(0 AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(3147483648 AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

