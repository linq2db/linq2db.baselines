-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	toInt32(intDiv(toInt64(r.Grace) * toInt64(10000000), toInt64(600000000)) % toInt64(60)),
	toFloat64(toInt64(r.Grace) * toInt64(10000000)) / toFloat64(600000000),
	toFloat64(toInt64(r.Required) * toInt64(10000000)) / toFloat64(600000000)
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

