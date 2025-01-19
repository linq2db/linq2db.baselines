BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2), (3)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

