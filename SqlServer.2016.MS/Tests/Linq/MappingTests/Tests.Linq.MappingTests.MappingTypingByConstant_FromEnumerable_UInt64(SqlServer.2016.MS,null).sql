-- SqlServer.2016.MS SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(NULL AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648 AS Decimal))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

