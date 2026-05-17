-- DuckDB

SELECT
	r.Id,
	'Element ' || Coalesce(r.VarCharTextNullable, '') || ' Text1',
	'Element ' || r.VarCharText || ' Text2',
	'Element ' || Coalesce(r.NVarCharTextNullable, '') || ' Text3',
	'Element ' || r.NVarCharText || ' Text4',
	'Element ' || Coalesce(CAST(r.VarCharTextNullable AS VARCHAR), '') || ' Text11',
	'Element ' || CAST(r.VarCharText AS VARCHAR) || ' Text12',
	'Element ' || Coalesce(CAST(r.NVarCharTextNullable AS VARCHAR), '') || ' Text13',
	'Element ' || CAST(r.NVarCharText AS VARCHAR) || ' Text14'
FROM
	StringConcatTypedEntity r
ORDER BY
	r.Id

