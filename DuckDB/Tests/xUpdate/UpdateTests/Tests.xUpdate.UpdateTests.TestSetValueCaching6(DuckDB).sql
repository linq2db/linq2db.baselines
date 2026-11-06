-- DuckDB
DECLARE $Value6 INTEGER -- Int32
SET     $Value6 = 7
DECLARE $id INTEGER -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value6 = $Value6
WHERE
	UpdateSetTest.Id = $id

-- DuckDB
DECLARE $id INTEGER -- Int32
SET     $id = 1

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2

-- DuckDB
DECLARE $Value6 INTEGER -- Int32
SET     $Value6 = 8
DECLARE $id INTEGER -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value6 = $Value6
WHERE
	UpdateSetTest.Id = $id

-- DuckDB
DECLARE $id INTEGER -- Int32
SET     $id = 1

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2

