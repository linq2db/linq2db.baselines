-- DuckDB
DECLARE $id  -- Int32
SET     $id = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 2

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = CAST($id AS INTEGER)
LIMIT 2

