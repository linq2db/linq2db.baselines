-- DuckDB

INSERT INTO TestBool
(
	Id,
	"Value"
)
VALUES
(
	1,
	True
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
	"Value" = True
WHERE
	TestBool.Id = 1

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TestBool t1
LIMIT 2

