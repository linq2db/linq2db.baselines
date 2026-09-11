-- YDB Ydb
INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(1,4567l,45670000000l,45670000000l,4567l)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.InSeconds as InSeconds,
	t1.InTicks as InTicks,
	t1.Undeclared as Undeclared,
	t1.UndeclaredSeconds as UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

