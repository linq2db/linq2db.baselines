-- DuckDB

TRUNCATE TABLE test_temp;

-- DuckDB

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

-- DuckDB

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

-- DuckDB
DECLARE $skip  -- Int32
SET     $skip = 1

SELECT
	t1.ID,
	t1.Field1
FROM
	test_temp t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET CAST($skip AS INTEGER) 

-- DuckDB

TRUNCATE TABLE test_temp;

-- DuckDB

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

-- DuckDB

INSERT INTO test_temp
(
	Field1
)
VALUES
(
	1
)

-- DuckDB
DECLARE $skip  -- Int32
SET     $skip = 1

SELECT
	t1.ID,
	t1.Field1
FROM
	test_temp t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET CAST($skip AS INTEGER) 

