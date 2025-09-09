BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(1 AS Decimal(1, 0)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(2147483648.123 AS Decimal(13, 3)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

