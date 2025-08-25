BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (
			SELECT 3 AS [Id]
			UNION ALL
			SELECT 4) [r] ON [t].[Id] = [r].[Id]

