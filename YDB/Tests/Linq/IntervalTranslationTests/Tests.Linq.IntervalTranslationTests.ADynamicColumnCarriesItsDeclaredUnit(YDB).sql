-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Elapsed Int64
SET     $Elapsed = 5400l

INSERT INTO DynamicDurationRow
(
	Id,
	Elapsed
)
VALUES
(
	$Id,
	$Elapsed
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Elapsed as Elapsed
FROM
	DynamicDurationRow t1
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(r.Elapsed AS Double)) / Double('60') as c1
FROM
	DynamicDurationRow r
LIMIT 2

