-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	toFloat64(toInt64(r.Grace) * toInt64(10000000)) / toFloat64(600000000) > toFloat64(30)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	toFloat64(toInt64(r.Required) * toInt64(10000000)) / toFloat64(600000000) > toFloat64(30)
ORDER BY
	r.Id

