-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Doubled Int32
SET     $Doubled = 20
DECLARE $Tripled Int32
SET     $Tripled = 30
DECLARE $Plain Int32
SET     $Plain = 10

INSERT INTO DivergentConversionRow
(
	Id,
	Doubled,
	Tripled,
	Plain
)
VALUES
(
	$Id,
	$Doubled,
	$Tripled,
	$Plain
)

-- YDB Ydb
DECLARE $PlainValue Int32
SET     $PlainValue = 10

SELECT
	r.Doubled as Doubled,
	r.Tripled as Tripled,
	r.Plain as Plain,
	r.Doubled + r.Doubled as SameColumn,
	r.Plain + r.Plain as NoConverter,
	r.Doubled + $PlainValue as PlainValue
FROM
	DivergentConversionRow r
LIMIT 2

-- YDB Ydb
DECLARE $Doubled Int32
SET     $Doubled = 20

SELECT
	COUNT(*) as Count_1
FROM
	DivergentConversionRow r
WHERE
	r.Doubled = $Doubled

