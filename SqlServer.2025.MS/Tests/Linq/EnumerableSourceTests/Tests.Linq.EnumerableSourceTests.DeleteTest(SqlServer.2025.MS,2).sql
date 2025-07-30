BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3), (4)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

