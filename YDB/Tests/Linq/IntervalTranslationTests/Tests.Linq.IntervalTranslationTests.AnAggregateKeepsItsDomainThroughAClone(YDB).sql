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

SELECT
	$CTE_1 as Min_1,
	$CTE_2 as Max_1
FROM
	DurationRow r
LIMIT 1

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

SELECT
	$CTE_1 as Min_1,
	$CTE_2 as Max_1
FROM
	DurationRow r
LIMIT 1

-- YDB Ydb
DECLARE $p Int64
SET     $p = 60l

$CTE_1 = 	SELECT
		MIN(t1.InSeconds) as Min_1
	FROM
		DurationRow t1
;

SELECT
	$CTE_1 as Min_1
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
LIMIT 1

