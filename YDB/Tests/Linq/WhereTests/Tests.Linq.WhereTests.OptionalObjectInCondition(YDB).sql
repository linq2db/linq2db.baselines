-- YDB Ydb
DECLARE $Id Text(1) -- String
SET     $Id = '1'u

SELECT
	r.FirstName as FirstName,
	r.PersonID as PersonID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	r.FirstName = $Id

-- YDB Ydb
SELECT
	r.FirstName as FirstName,
	r.PersonID as PersonID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	1 = 0

-- YDB Ydb
DECLARE $Id Text(1) -- String
SET     $Id = '1'u

SELECT
	r.FirstName as FirstName,
	r.PersonID as PersonID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	r.FirstName = $Id

