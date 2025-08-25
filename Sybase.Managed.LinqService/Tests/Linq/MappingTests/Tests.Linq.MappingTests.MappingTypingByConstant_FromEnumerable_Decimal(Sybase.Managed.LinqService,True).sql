BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(NULL AS DECIMAL(18, 10)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(2147483648.123 AS DECIMAL(13, 3)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

