-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	toInt32(intDiv(r.Grace, toInt64(60)) % toInt64(60)),
	toFloat64(r.Grace) / toFloat64(60),
	toFloat64(r.Required) / toFloat64(60)
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

