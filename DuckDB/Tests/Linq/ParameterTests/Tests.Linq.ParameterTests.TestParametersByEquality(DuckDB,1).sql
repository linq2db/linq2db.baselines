-- DuckDB
DECLARE $personId  -- Int32
SET     $personId = 1
DECLARE $personId_1  -- Int32
SET     $personId_1 = 1

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender,
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = CAST($personId AS INTEGER) AND p.PersonID = CAST($personId_1 AS INTEGER)

-- DuckDB
DECLARE $personId  -- Int32
SET     $personId = 1
DECLARE $personId_1  -- Int32
SET     $personId_1 = 2

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender,
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = CAST($personId AS INTEGER) AND p.PersonID = CAST($personId_1 AS INTEGER)

