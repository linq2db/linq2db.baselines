-- Sybase.Managed Sybase

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(1 AS DECIMAL(1, 0)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

-- Sybase.Managed Sybase

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(2147483648.123 AS DECIMAL(13, 3)) AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

