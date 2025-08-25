BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3), (4)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

