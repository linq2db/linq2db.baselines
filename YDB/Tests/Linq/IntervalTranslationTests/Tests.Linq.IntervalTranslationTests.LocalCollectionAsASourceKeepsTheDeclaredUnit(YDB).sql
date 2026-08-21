-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 900l
DECLARE $InTicks Int64
SET     $InTicks = 9000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 9000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 900l

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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $InSeconds Int64
SET     $InSeconds = 1800l
DECLARE $InTicks Int64
SET     $InTicks = 18000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 18000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 1800l

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
DECLARE $Id Int32
SET     $Id = 3
DECLARE $InSeconds Int64
SET     $InSeconds = 2700l
DECLARE $InTicks Int64
SET     $InTicks = 27000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 27000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 2700l

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

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.InSeconds as InSeconds,
	t1.InTicks as InTicks,
	t1.Undeclared as Undeclared,
	t1.UndeclaredSeconds as UndeclaredSeconds
FROM
	DurationRow t1

