-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = 'M'u

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND 'M'u = t1.Gender

-- YDB Ydb
DECLARE $gender Text(1) -- StringFixedLength
SET     $gender = 'M'u

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = $gender

-- YDB Ydb
DECLARE $gender Text(1) -- StringFixedLength
SET     $gender = 'M'u

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND $gender = t1.Gender

