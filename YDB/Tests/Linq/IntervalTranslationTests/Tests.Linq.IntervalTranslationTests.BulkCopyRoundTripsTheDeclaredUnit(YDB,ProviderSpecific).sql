INSERT ASYNC BULK DurationRow(Id, InSeconds, InTicks, Undeclared, UndeclaredSeconds)

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

