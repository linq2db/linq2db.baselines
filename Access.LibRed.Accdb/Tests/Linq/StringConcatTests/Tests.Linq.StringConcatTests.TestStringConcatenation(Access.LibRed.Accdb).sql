-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	'Element ' + CASE
		WHEN [r].[VarCharTextNullable] IS NULL THEN ''
		ELSE [r].[VarCharTextNullable]
	END + ' Text1',
	'Element ' + [r].[VarCharText] + ' Text2',
	'Element ' + CASE
		WHEN [r].[NVarCharTextNullable] IS NULL THEN ''
		ELSE [r].[NVarCharTextNullable]
	END + ' Text3',
	'Element ' + [r].[NVarCharText] + ' Text4',
	'Element ' + CASE
		WHEN [r].[VarCharTextNullable] IS NULL THEN ''
		WHEN [r].[VarCharTextNullable] IS NOT NULL THEN CStr([r].[VarCharTextNullable])
		ELSE NULL
	END + ' Text11',
	'Element ' + CStr([r].[VarCharText]) + ' Text12',
	'Element ' + CASE
		WHEN [r].[NVarCharTextNullable] IS NULL THEN ''
		WHEN [r].[NVarCharTextNullable] IS NOT NULL THEN CStr([r].[NVarCharTextNullable])
		ELSE NULL
	END + ' Text13',
	'Element ' + CStr([r].[NVarCharText]) + ' Text14'
FROM
	[StringConcatTypedEntity] [r]
ORDER BY
	[r].[Id]

