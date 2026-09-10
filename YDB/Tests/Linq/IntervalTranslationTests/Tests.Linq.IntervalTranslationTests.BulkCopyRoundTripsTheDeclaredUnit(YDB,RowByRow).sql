-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 4567l
DECLARE $InTicks Int64
SET     $InTicks = 45670000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 45670000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 4567l

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
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

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

