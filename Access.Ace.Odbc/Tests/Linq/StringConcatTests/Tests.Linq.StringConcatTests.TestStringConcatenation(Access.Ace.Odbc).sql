-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	'Element ' + IIF([r].[VarCharTextNullable] IS NULL, '', [r].[VarCharTextNullable]) + ' Text1',
	'Element ' + [r].[VarCharText] + ' Text2',
	'Element ' + IIF([r].[NVarCharTextNullable] IS NULL, '', [r].[NVarCharTextNullable]) + ' Text3',
	'Element ' + [r].[NVarCharText] + ' Text4',
	'Element ' + IIF([r].[VarCharTextNullable] IS NULL, '', IIF([r].[VarCharTextNullable] IS NOT NULL, CStr([r].[VarCharTextNullable]), NULL)) + ' Text11',
	'Element ' + CStr([r].[VarCharText]) + ' Text12',
	'Element ' + IIF([r].[NVarCharTextNullable] IS NULL, '', IIF([r].[NVarCharTextNullable] IS NOT NULL, CStr([r].[NVarCharTextNullable]), NULL)) + ' Text13',
	'Element ' + CStr([r].[NVarCharText]) + ' Text14'
FROM
	[StringConcatTypedEntity] [r]
ORDER BY
	[r].[Id]

