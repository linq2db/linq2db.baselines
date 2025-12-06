-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 0 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 3147483648 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

