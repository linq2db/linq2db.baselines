-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Doubled INTEGER -- Int32
SET     $Doubled = 20
DECLARE $Tripled INTEGER -- Int32
SET     $Tripled = 30
DECLARE $Plain INTEGER -- Int32
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

-- DuckDB
DECLARE $PlainValue INTEGER -- Int32
SET     $PlainValue = 10

SELECT
	r.Doubled,
	r.Tripled,
	r.Plain,
	r.Doubled + r.Doubled,
	r.Plain + r.Plain,
	r.Doubled + $PlainValue
FROM
	DivergentConversionRow r
LIMIT 2

-- DuckDB
DECLARE $Doubled INTEGER -- Int32
SET     $Doubled = 20

SELECT
	COUNT(*)
FROM
	DivergentConversionRow r
WHERE
	r.Doubled = $Doubled

