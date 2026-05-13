-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[Id],
	'Element ' + Coalesce([r].[VarCharTextNullable], '') + ' Text1',
	'Element ' + [r].[VarCharText] + ' Text2',
	N'Element ' + Coalesce([r].[NVarCharTextNullable], N'') + N' Text3',
	N'Element ' + [r].[NVarCharText] + N' Text4',
	N'Element ' + Coalesce(CAST([r].[VarCharTextNullable] AS NVarChar(4000)), N'') + N' Text11',
	N'Element ' + CAST([r].[VarCharText] AS NVarChar(4000)) + N' Text12',
	N'Element ' + Coalesce(CAST([r].[NVarCharTextNullable] AS NVarChar(4000)), N'') + N' Text13',
	N'Element ' + CAST([r].[NVarCharText] AS NVarChar(4000)) + N' Text14'
FROM
	[StringConcatTypedEntity] [r]
ORDER BY
	[r].[Id]

