-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 5400l
DECLARE $InTicks Int64
SET     $InTicks = 54000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 54000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 5400l

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
$CTE_1 = 	SELECT
		MIN(t1.InSeconds) as Seconds
	FROM
		DurationRow t1
;
$CTE_2 = 	SELECT
		MIN(t2.InTicks) as Ticks
	FROM
		DurationRow t2
;
$CTE_3 = 	SELECT
		MIN(t3.UndeclaredSeconds) as Converted
	FROM
		DurationRow t3
;
$CTE_4 = 	SELECT
		MAX(t4.InSeconds) as Largest
	FROM
		DurationRow t4
;

SELECT
	$CTE_1 as Seconds,
	$CTE_2 as Ticks,
	$CTE_3 as Converted,
	$CTE_4 as Largest
FROM
	DurationRow t5
LIMIT 1

