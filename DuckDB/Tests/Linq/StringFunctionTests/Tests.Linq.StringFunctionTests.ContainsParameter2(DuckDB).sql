-- DuckDB
DECLARE $str NVarChar(6) -- String
SET     $str = '%o~%h%'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName NOT LIKE CAST($str AS VARCHAR) ESCAPE '~' AND
	p.PersonID = 1

