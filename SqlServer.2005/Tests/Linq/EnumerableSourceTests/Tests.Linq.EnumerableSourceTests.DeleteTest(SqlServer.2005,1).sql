BeforeExecute
-- SqlServer.2005

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (
			SELECT 2 AS [Id]
			UNION ALL
			SELECT 3) [r] ON [t].[Id] = [r].[Id]

