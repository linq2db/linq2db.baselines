-- DuckDB
DECLARE $id  -- Int32
SET     $id = 5

SELECT
	x.PersonID,
	x.FirstName
FROM
	Person x
WHERE
	x.PersonID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 5

SELECT
	x.PersonID,
	x.FirstName
FROM
	Person x
WHERE
	x.PersonID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 5

SELECT
	x.PersonID,
	x.FirstName
FROM
	Person x
WHERE
	x.PersonID = CAST($id AS INTEGER)

