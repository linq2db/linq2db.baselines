-- ClickHouse.MySql ClickHouse
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
	toInt64(5400),
	toInt64(54000000000),
	toInt64(54000000000),
	toInt64(5400)
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Source,
	t1.Duration,
	t1.Duration_1
FROM
	(
		SELECT
			toInt32(1) as Source,
			r.InSeconds as Duration,
			toInt64(NULL) as Duration_1
		FROM
			DurationRow r
		UNION ALL
		SELECT
			toInt32(2) as Source,
			toInt64(NULL) as Duration,
			r_1.InTicks as Duration_1
		FROM
			DurationRow r_1
	) t1
ORDER BY
	t1.Source

