BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT CAST(NULL AS Int) [Id], CAST(NULL AS NVarChar(4000)) [Value] WHERE 1 = 0) [r]([Id], [Value]) ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

