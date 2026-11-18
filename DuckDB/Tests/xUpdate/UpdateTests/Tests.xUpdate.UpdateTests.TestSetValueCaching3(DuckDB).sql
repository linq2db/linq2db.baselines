-- DuckDB
DECLARE $Value3 INTEGER -- Int32
SET     $Value3 = 7
DECLARE $id INTEGER -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value3 = $Value3
WHERE
	UpdateSetTest.Id = $id

-- DuckDB
DECLARE $id INTEGER -- Int32
SET     $id = 1

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2

-- DuckDB
DECLARE $Value3 INTEGER -- Int32
SET     $Value3 = 8
DECLARE $id INTEGER -- Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value3 = $Value3
WHERE
	UpdateSetTest.Id = $id

-- DuckDB
DECLARE $id INTEGER -- Int32
SET     $id = 1

SELECT
	t1.Value3
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2

