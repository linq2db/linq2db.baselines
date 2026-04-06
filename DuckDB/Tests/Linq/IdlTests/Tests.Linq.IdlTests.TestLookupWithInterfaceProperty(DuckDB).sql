-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	obj.PersonID,
	obj.FirstName,
	obj.LastName,
	obj.MiddleName,
	obj.Gender
FROM
	Person obj
WHERE
	obj.PersonID = CAST($id AS INTEGER)
LIMIT 2

