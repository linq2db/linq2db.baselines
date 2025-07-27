BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,NULL)
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,2147483648)
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

