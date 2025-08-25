BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(0 AS Float) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(3147483648 AS Float) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

