-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		r.Id as Id,
		r.InSeconds as InSeconds,
		r.InTicks as InTicks,
		r.UndeclaredSeconds as UndeclaredSeconds
	FROM
		DurationRow r
)
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.UndeclaredSeconds
FROM
	CTE_1 t1
ORDER BY
	t1.Id
LIMIT 2

