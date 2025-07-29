BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(1 AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648 AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

