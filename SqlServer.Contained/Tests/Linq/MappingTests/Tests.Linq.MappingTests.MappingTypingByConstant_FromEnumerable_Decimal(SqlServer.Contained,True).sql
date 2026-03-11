-- SqlServer.Contained SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(NULL AS Decimal(18, 10)))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

-- SqlServer.Contained SqlServer.2019

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(2147483648.123 AS Decimal(13, 3)))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

