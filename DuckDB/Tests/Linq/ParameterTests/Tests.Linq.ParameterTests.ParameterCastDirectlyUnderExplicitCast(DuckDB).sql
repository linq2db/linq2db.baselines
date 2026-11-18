-- DuckDB
DECLARE $name INTEGER -- Int32
SET     $name = 4

SELECT
	t.Id,
	t."Value",
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t."Value" = CAST($name AS VARCHAR)

-- DuckDB
DECLARE $name INTEGER -- Int32
SET     $name = 4

SELECT
	t.Id,
	t."Value",
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.Money = CAST($name AS DECIMAL)

