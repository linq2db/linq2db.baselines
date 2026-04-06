-- DuckDB
DECLARE $Value5  -- Int32
SET     $Value5 = 11
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value5 = CAST($Value5 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $Value5  -- Int32
SET     $Value5 = 12
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value5 = CAST($Value5 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value5
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

