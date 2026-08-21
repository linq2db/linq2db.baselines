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
$CTE_1 = 	SELECT
		x.InTicks as InTicks
	FROM
		DurationRow x
;

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds * 10000000l IN (
		SELECT
			t1.InTicks
		FROM
			$CTE_1 t1
	)
ORDER BY
	r.Id

