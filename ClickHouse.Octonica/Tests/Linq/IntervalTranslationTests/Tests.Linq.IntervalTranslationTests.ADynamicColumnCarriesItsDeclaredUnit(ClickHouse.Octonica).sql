-- ClickHouse.Octonica ClickHouse
INSERT INTO DynamicDurationRow
(
	Id,
	Elapsed
)
VALUES
(
	1,
	toInt64(5400)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Elapsed
FROM
	DynamicDurationRow t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(r.Elapsed) / toFloat64(60)
FROM
	DynamicDurationRow r
LIMIT 2

