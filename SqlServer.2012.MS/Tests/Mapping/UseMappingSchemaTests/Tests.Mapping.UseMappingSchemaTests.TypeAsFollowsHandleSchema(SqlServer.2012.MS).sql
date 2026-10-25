-- SqlServer.2012.MS SqlServer.2012
SELECT
	IIF([c_1].[Kind] = N'C1', [c_1].[Kind], NULL)
FROM
	[SourceSchemaShape] [c_1]
ORDER BY
	[c_1].[Id]

