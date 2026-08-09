-- ClickHouse.Octonica ClickHouse
INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	1,
	toInt64(1),
	toInt64(12345670),
	toInt64(12345670),
	toInt64(1)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt32(intDiv(r.InTicks, toInt64(10000)) % toInt64(1000)),
	toInt32(intDiv(r.InTicks, toInt64(10)) % toInt64(1000))
FROM
	DurationRow r
LIMIT 2

