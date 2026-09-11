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

-- YDB Ydb
DECLARE $InSeconds Int64
SET     $InSeconds = 19260l
DECLARE $InTicks Int64
SET     $InTicks = 192600000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 45670000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 4567l
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	DurationRow
SET
	InSeconds = $InSeconds,
	InTicks = $InTicks,
	Undeclared = $Undeclared,
	UndeclaredSeconds = $UndeclaredSeconds
WHERE
	DurationRow.Id = $Id

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

-- YDB Ydb
DECLARE $InSeconds Int64
SET     $InSeconds = 4567l
DECLARE $InTicks Int64
SET     $InTicks = 45670000000l

UPDATE
	DurationRow
SET
	InSeconds = $InSeconds,
	InTicks = $InTicks
WHERE
	DurationRow.Id = 1

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

