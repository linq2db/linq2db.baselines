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
		MIN(t1.InSeconds) as Min_1
	FROM
		DurationRow t1
;
$CTE_2 = 	SELECT
		MAX(t2.InSeconds) as Max_1
	FROM
		DurationRow t2
;
$CTE_3 = 	SELECT
		SUM(Unwrap(CAST(t3.InSeconds AS Double)) / Double('60')) as TotalMin
	FROM
		DurationRow t3
;

SELECT
	$CTE_1 as Min_1,
	$CTE_2 as Max_1,
	$CTE_3 as TotalMin
FROM
	DurationRow t4
LIMIT 1

