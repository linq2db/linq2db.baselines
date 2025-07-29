BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(1 AS BigInt) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(2147483648 AS BigInt) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

