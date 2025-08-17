BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2), (3)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

