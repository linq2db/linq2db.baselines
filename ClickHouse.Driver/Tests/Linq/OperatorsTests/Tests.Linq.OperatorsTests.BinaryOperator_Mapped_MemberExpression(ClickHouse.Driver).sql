-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	r.Field + 3 = 5 AND
	r.FieldN IS NOT NULL AND
	r.FieldN + 3 = 5 AND
	r.FieldClass + 3 = 5

