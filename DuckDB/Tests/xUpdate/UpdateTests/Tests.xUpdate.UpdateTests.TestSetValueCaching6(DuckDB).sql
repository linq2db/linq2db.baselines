-- DuckDB
DECLARE $Value6  -- Int32
SET     $Value6 = 7
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value6 = CAST($Value6 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $Value6  -- Int32
SET     $Value6 = 8
DECLARE $id  -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value6 = CAST($Value6 AS INTEGER)
WHERE
	UpdateSetTest.Id = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

