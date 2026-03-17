-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	r.Field = 2 AND r.FieldN = 2 AND r.FieldClass = 2

