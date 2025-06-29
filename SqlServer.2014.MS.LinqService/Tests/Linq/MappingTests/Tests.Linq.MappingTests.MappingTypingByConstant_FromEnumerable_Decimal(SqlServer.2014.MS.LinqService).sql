BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,1)
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,2147483648)
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

