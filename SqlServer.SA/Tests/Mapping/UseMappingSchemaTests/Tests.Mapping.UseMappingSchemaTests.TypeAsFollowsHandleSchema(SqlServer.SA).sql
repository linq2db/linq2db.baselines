-- SqlServer.SA SqlServer.2019
SELECT
	IIF([c_1].[Kind] = N'C1', [c_1].[Kind], NULL)
FROM
	[SourceSchemaShape] [c_1]
ORDER BY
	[c_1].[Id]

