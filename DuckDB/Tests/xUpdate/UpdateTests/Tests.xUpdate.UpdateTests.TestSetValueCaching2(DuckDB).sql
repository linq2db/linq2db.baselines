-- DuckDB
DECLARE $Value2  -- Int32
SET     $Value2 = 11
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value2 = CAST($Value2 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $Value2  -- Int32
SET     $Value2 = 12
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value2 = CAST($Value2 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value2
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

