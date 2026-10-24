-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	toFloat64(toInt32(r.F))
FROM
	DoubleValue r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.F
FROM
	DoubleValue t1

