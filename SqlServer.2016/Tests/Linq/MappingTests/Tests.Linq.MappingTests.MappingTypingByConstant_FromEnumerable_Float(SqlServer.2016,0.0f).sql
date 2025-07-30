BeforeExecute
-- SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(0 AS Real))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2016

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(3.14748365E+09 AS Real))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

