BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(NULL AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648 AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

