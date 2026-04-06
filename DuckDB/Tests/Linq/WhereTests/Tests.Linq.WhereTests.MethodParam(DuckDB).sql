-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = CAST($p AS INTEGER)

