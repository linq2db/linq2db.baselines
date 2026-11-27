-- DuckDB
INSERT INTO AliasBaseTable
(
	Id,
	"Value"
)
VALUES
(
	1,
	10
)

-- DuckDB
INSERT INTO AliasBaseTable
(
	Id,
	"Value"
)
VALUES
(
	2,
	20
)

-- DuckDB
INSERT INTO AliasDetailTable
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	1,
	1,
	3
)

-- DuckDB
INSERT INTO AliasDetailTable
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	2,
	1,
	5
)

-- DuckDB
INSERT INTO AliasDetailTable
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	3,
	2,
	7
)

-- DuckDB
DECLARE $minValue INTEGER -- Int32
SET     $minValue = 15

SELECT
	o.Id,
	o."Value",
	(
		SELECT
			SUM(i.Cnt)
		FROM
			AliasDetailTable i
		WHERE
			i.OutId = o.Id
		GROUP BY
			i.OutId
		LIMIT 1
	)
FROM
	AliasBaseTable o
WHERE
	o."Value" >= $minValue

