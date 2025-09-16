BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[Id],
	[t].[Value] as [Value_1]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT CAST(NULL AS Int) [Id], CAST(NULL AS NVarChar(255)) [Value] WHERE 1 = 0) [r] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

