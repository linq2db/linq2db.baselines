BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(0 AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(3147483648 AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

