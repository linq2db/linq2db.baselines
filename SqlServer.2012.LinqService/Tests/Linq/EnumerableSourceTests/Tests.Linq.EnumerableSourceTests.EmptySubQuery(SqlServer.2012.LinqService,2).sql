BeforeExecute
-- SqlServer.2012

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(SELECT NULL [Id], NULL [Value], NULL [Id0], NULL [Value0] WHERE 1 = 0) [r]([Id], [Value], [Id0], [Value0])
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

