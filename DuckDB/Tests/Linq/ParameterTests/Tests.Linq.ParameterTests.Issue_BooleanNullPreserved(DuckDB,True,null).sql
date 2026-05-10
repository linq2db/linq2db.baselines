-- DuckDB

INSERT INTO TestBool
(
	Id,
	"Value"
)
VALUES
(
	1,
	NULL
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TestBool t1
LIMIT 2

-- DuckDB

UPDATE
	TestBool
SET
	"Value" = NOT TestBool."Value"

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TestBool t1
LIMIT 2

-- DuckDB

UPDATE
	TestBool
SET
	"Value" = NULL
WHERE
	TestBool.Id = 1

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TestBool t1
LIMIT 2

