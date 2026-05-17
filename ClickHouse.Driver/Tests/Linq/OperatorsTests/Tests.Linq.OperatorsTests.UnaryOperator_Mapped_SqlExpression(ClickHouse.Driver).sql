-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	3 * r.Field = 6 AND 3 * r.FieldN = 6 AND 3 * r.FieldClass = 6

