-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	concat('Element ', Coalesce(r.VarCharTextNullable, ''), ' Text1'),
	concat('Element ', r.VarCharText, ' Text2'),
	concat('Element ', Coalesce(r.NVarCharTextNullable, ''), ' Text3'),
	concat('Element ', r.NVarCharText, ' Text4'),
	concat('Element ', Coalesce(toString(r.VarCharTextNullable), ''), ' Text11'),
	concat('Element ', toString(r.VarCharText), ' Text12'),
	concat('Element ', Coalesce(toString(r.NVarCharTextNullable), ''), ' Text13'),
	concat('Element ', toString(r.NVarCharText), ' Text14')
FROM
	StringConcatTypedEntity r
ORDER BY
	r.Id

