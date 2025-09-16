BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT CAST(NULL AS Int) [Id], CAST(NULL AS NVarChar(4000)) [Value] WHERE 1 = 0) [r] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

