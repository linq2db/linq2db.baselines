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
DECLARE $Ids0_1 Int64
SET     $Ids0_1 = 900l
DECLARE $Ids0_2 Int64
SET     $Ids0_2 = 2700l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds IN ($Ids0_1, $Ids0_2)
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ids0_1 Int64
SET     $Ids0_1 = 9000000000l
DECLARE $Ids0_2 Int64
SET     $Ids0_2 = 27000000000l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InTicks IN ($Ids0_1, $Ids0_2)
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ids0_1 Int64
SET     $Ids0_1 = 900l
DECLARE $Ids0_2 Int64
SET     $Ids0_2 = 2700l

SELECT
	r.InSeconds IN ($Ids0_1, $Ids0_2) as c1
FROM
	DurationRow r
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $InSeconds Int64
SET     $InSeconds = 1800l

$CTE_1 = 	SELECT
		r.InSeconds as InSeconds
	FROM
		DurationRow r
;

SELECT
	CASE
		WHEN $InSeconds IN (
			SELECT
				t1.InSeconds
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

-- YDB Ydb
DECLARE $InTicks Int64
SET     $InTicks = 54000000000l

$CTE_1 = 	SELECT
		r.InTicks as InTicks
	FROM
		DurationRow r
;

SELECT
	CASE
		WHEN $InTicks IN (
			SELECT
				t1.InTicks
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

