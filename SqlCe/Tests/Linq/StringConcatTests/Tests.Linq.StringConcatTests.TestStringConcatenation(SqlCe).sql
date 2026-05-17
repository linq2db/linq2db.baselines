-- SqlCe

SELECT
	[r].[Id],
	'Element ' + Coalesce([r].[VarCharTextNullable], '') + ' Text1' as [Text1],
	'Element ' + [r].[VarCharText] + ' Text2' as [Text2],
	'Element ' + Coalesce([r].[NVarCharTextNullable], '') + ' Text3' as [Text3],
	'Element ' + [r].[NVarCharText] + ' Text4' as [Text4],
	'Element ' + Coalesce(CAST([r].[VarCharTextNullable] AS NVarChar(255)), '') + ' Text11' as [Text11],
	'Element ' + CAST([r].[VarCharText] AS NVarChar(255)) + ' Text12' as [Text12],
	'Element ' + Coalesce(CAST([r].[NVarCharTextNullable] AS NVarChar(255)), '') + ' Text13' as [Text13],
	'Element ' + CAST([r].[NVarCharText] AS NVarChar(255)) + ' Text14' as [Text14]
FROM
	[StringConcatTypedEntity] [r]
ORDER BY
	[r].[Id]

