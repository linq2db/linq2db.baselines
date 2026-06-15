-- YDB Ydb

SELECT
	r.Id as Id,
	'Element 'u || Coalesce(r.VarCharTextNullable, ''u) || ' Text1'u as Text1,
	'Element 'u || r.VarCharText || ' Text2'u as Text2,
	'Element 'u || Coalesce(r.NVarCharTextNullable, ''u) || ' Text3'u as Text3,
	'Element 'u || r.NVarCharText || ' Text4'u as Text4,
	'Element 'u || Coalesce(CAST(r.VarCharTextNullable AS Text), ''u) || ' Text11'u as Text11,
	'Element 'u || Unwrap(CAST(r.VarCharText AS Text)) || ' Text12'u as Text12,
	'Element 'u || Coalesce(CAST(r.NVarCharTextNullable AS Text), ''u) || ' Text13'u as Text13,
	'Element 'u || Unwrap(CAST(r.NVarCharText AS Text)) || ' Text14'u as Text14
FROM
	StringConcatTypedEntity r
ORDER BY
	r.Id

