-- SqlServer.2019
SELECT
	[s].[Id],
	IIF([s].[Kind] = N'C1', [s].[Kind], NULL)
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON [x].[ParentID] = [s].[Id]
WHERE
	[s].[Id] > 0

