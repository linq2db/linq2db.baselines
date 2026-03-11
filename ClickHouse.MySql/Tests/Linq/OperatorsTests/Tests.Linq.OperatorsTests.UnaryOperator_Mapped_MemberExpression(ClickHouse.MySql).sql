-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	r.Field * 3 = 6 AND r.FieldN * 3 = 6 AND r.FieldClass * 3 = 6

