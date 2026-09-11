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
DECLARE $PlainValue Int64
SET     $PlainValue = 1800l

SELECT
	r.Undeclared as Undeclared,
	r.UndeclaredSeconds as UndeclaredSeconds,
	r.Undeclared + r.Undeclared as SameColumn,
	r.InSeconds + r.InSeconds as SameUnit,
	r.UndeclaredSeconds + $PlainValue as PlainValue
FROM
	DurationRow r
LIMIT 2

