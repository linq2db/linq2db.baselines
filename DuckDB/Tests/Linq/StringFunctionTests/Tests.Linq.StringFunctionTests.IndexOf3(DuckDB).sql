-- DuckDB
DECLARE $s NVarChar(1) -- String
SET     $s = 'e'
DECLARE $Value INTEGER -- Int32
SET     $Value = 7
DECLARE $Value_1 INTEGER -- Int32
SET     $Value_1 = 3

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN Position($s in Substring(Left(p.LastName, $Value), $Value_1)) = 0
			THEN 0
		ELSE Position($s in Substring(Left(p.LastName, $Value), $Value_1)) + $Value_1 - 1
	END - 1 = 4 AND
	p.PersonID = 2

