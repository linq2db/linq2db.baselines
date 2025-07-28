BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(1 AS Decimal) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(2147483648 AS Decimal) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

