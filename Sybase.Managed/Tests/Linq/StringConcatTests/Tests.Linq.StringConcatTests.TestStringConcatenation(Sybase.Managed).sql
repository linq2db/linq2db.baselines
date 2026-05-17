-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	'Element ' + Coalesce([r].[VarCharTextNullable], '') + ' Text1',
	'Element ' + [r].[VarCharText] + ' Text2',
	'Element ' + Coalesce([r].[NVarCharTextNullable], '') + ' Text3',
	'Element ' + [r].[NVarCharText] + ' Text4',
	CASE WHEN 'Element ' IS NULL OR Coalesce(CAST([r].[VarCharTextNullable] AS NVarChar(255)), '') IS NULL OR ' Text11' IS NULL THEN NULL ELSE 'Element ' + Coalesce(CAST([r].[VarCharTextNullable] AS NVarChar(255)), '') + ' Text11' END,
	CASE WHEN 'Element ' IS NULL OR CAST([r].[VarCharText] AS NVarChar(255)) IS NULL OR ' Text12' IS NULL THEN NULL ELSE 'Element ' + CAST([r].[VarCharText] AS NVarChar(255)) + ' Text12' END,
	CASE WHEN 'Element ' IS NULL OR Coalesce(CAST([r].[NVarCharTextNullable] AS NVarChar(255)), '') IS NULL OR ' Text13' IS NULL THEN NULL ELSE 'Element ' + Coalesce(CAST([r].[NVarCharTextNullable] AS NVarChar(255)), '') + ' Text13' END,
	CASE WHEN 'Element ' IS NULL OR CAST([r].[NVarCharText] AS NVarChar(255)) IS NULL OR ' Text14' IS NULL THEN NULL ELSE 'Element ' + CAST([r].[NVarCharText] AS NVarChar(255)) + ' Text14' END
FROM
	[StringConcatTypedEntity] [r]
ORDER BY
	[r].[Id]

