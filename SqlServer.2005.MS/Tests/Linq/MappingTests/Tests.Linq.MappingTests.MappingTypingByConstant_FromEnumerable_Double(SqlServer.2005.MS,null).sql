BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], NULL AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 3147483648 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

