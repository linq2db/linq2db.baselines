-- DuckDB
DECLARE $gender NVarChar(1) -- String
SET     $gender = 'O'

SELECT
	x.PersonID,
	x.Diagnosis
FROM
	Patient x
		INNER JOIN Person y ON x.PersonID = y.PersonID
WHERE
	y.Gender = CAST($gender AS VARCHAR)

