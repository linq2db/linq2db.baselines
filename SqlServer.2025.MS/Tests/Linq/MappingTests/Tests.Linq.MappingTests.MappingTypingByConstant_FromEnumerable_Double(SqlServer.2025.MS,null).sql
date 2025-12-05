-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(NULL AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,CAST(3147483648 AS Float))
		) [arg]([Id], [Value]) ON [entity].[PersonID] = [arg].[Id]

