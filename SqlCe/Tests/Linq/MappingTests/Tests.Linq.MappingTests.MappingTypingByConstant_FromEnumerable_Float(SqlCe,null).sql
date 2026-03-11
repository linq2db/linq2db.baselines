-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], NULL AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 3.14748365E+09 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

