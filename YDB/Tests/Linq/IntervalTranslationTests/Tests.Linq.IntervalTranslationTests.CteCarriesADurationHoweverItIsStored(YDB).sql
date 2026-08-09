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
		r.Id as Id,
		r.InSeconds as InSeconds,
		r.InTicks as InTicks,
		r.UndeclaredSeconds as UndeclaredSeconds
	FROM
		DurationRow r
;

SELECT
	t1.Id as Id,
	t1.InSeconds as InSeconds,
	t1.InTicks as InTicks,
	t1.UndeclaredSeconds as UndeclaredSeconds
FROM
	$CTE_1 t1
ORDER BY
	t1.Id
LIMIT 2

