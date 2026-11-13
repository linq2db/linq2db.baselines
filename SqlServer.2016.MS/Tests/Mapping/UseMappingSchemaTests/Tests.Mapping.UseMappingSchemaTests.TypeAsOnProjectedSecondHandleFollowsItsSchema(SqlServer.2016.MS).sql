-- SqlServer.2016.MS SqlServer.2016
SELECT
	IIF([s].[Kind] = N'C1', [s].[Kind], NULL)
FROM
	[Parent] [x]
		INNER JOIN [SourceSchemaShape] [s] ON [x].[ParentID] = [s].[Id]
ORDER BY
	[s].[Id]

