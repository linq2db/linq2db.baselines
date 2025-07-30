BeforeExecute
-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 1 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlCe

SELECT
	[arg].[Id],
	[arg].[Value] as [Value_1]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT 1 AS [Id], 2147483648 AS [Value]) [arg] ON [entity].[PersonID] = [arg].[Id]

