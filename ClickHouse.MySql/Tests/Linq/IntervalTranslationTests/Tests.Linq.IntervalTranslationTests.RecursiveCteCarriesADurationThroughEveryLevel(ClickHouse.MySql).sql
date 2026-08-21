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
	toInt64(900),
	toInt64(9000000000),
	toInt64(9000000000),
	toInt64(900)
)

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
	2,
	toInt64(1800),
	toInt64(18000000000),
	toInt64(18000000000),
	toInt64(1800)
)

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
	3,
	toInt64(2700),
	toInt64(27000000000),
	toInt64(27000000000),
	toInt64(2700)
)

-- ClickHouse.MySql ClickHouse
WITH RECURSIVE self0 AS
(
	SELECT
		toInt32(1) as Level_1,
		r.Id as Id,
		r.InSeconds as Duration,
		r.UndeclaredSeconds as Converted
	FROM
		DurationRow r
	WHERE
		r.Id = 1
	UNION ALL
	SELECT
		c_1.Level_1 + 1 as Level_1,
		t1.Id as Id,
		t1.InSeconds as Duration,
		t1.UndeclaredSeconds as Converted
	FROM
		DurationRow t1
			INNER JOIN self0 c_1 ON t1.Id = c_1.Id + 1
)
SELECT
	t2.Id,
	t2.Level_1,
	t2.Duration,
	t2.Converted
FROM
	self0 t2
ORDER BY
	t2.Id

