-- DuckDB

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = 'M'

-- DuckDB

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND 'M' = t1.Gender

-- DuckDB
DECLARE $gender NVarChar(1) -- String
SET     $gender = 'M'

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = CAST($gender AS VARCHAR)

-- DuckDB
DECLARE $gender NVarChar(1) -- String
SET     $gender = 'M'

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND CAST($gender AS VARCHAR) = t1.Gender

