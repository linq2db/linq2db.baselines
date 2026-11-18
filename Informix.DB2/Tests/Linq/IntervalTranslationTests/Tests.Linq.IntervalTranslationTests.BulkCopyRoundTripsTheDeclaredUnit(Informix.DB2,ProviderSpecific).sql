INSERT BULK DurationRow

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1

