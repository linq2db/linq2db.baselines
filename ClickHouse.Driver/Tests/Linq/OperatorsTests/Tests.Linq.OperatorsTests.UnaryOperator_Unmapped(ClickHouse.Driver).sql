-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	negate(r.Field) = -2 AND negate(r.FieldN) = -2 AND
	negate(r.FieldClass) = -2

