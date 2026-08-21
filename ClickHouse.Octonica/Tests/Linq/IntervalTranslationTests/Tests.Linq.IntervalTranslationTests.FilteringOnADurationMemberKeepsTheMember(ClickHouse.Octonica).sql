-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > toInt64(1800)
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	OptionalDurationRow r
WHERE
	r.Required > toInt64(1800)
ORDER BY
	r.Id

