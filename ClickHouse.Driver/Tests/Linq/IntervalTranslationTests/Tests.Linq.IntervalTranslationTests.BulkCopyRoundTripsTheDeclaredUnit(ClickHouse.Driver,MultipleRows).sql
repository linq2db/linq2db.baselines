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
(1,toInt64(4567),toInt64(45670000000),toInt64(45670000000),toInt64(4567))

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

