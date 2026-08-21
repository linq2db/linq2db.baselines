-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InDays Int64
SET     $InDays = 2l
DECLARE $InMilliseconds Int64
SET     $InMilliseconds = 172800000l
DECLARE $InNanoseconds Int64
SET     $InNanoseconds = 172800000000000l

INSERT INTO UnitSpreadRow
(
	Id,
	InDays,
	InMilliseconds,
	InNanoseconds
)
VALUES
(
	$Id,
	$InDays,
	$InMilliseconds,
	$InNanoseconds
)

-- YDB Ydb
$CTE_1 = 	SELECT
		x.InMilliseconds as InMilliseconds
	FROM
		UnitSpreadRow x
;

SELECT
	r.Id as Id
FROM
	UnitSpreadRow r
WHERE
	r.InDays * 86400000l IN (
		SELECT
			t1.InMilliseconds
		FROM
			$CTE_1 t1
	)

-- YDB Ydb
$CTE_1 = 	SELECT
		x.InDays as InDays
	FROM
		UnitSpreadRow x
;

SELECT
	r.Id as Id
FROM
	UnitSpreadRow r
WHERE
	r.InMilliseconds IN (
		SELECT
			t1.InDays * 86400000l
		FROM
			$CTE_1 t1
	)

