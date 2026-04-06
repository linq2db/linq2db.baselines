-- DuckDB
DECLARE $Value3  -- Int32
SET     $Value3 = 7
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value3 = CAST($Value3 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $Value3  -- Int32
SET     $Value3 = 8
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value3 = CAST($Value3 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

