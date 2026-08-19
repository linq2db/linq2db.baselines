-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Declared_Elapsed Int64
SET     $Declared_Elapsed = 5400l
DECLARE $Converted_Elapsed Int64
SET     $Converted_Elapsed = 5400l

INSERT INTO NestedDurationRow
(
	Id,
	Declared,
	Converted
)
VALUES
(
	$Id,
	$Declared_Elapsed,
	$Converted_Elapsed
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Declared as Declared,
	t1.Converted as Converted
FROM
	NestedDurationRow t1
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(r.Declared AS Double)) / Double('60') as c1
FROM
	NestedDurationRow r
LIMIT 2

