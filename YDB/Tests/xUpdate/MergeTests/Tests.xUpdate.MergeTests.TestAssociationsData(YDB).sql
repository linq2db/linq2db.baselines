-- YDB Ydb

SELECT
	t1.PersonID as PersonID,
	t1.Diagnosis as Diagnosis
FROM
	Patient t1
ORDER BY
	t1.PersonID

-- YDB Ydb

SELECT
	t1.PersonID as PersonID,
	t1.Taxonomy as Taxonomy
FROM
	Doctor t1
ORDER BY
	t1.PersonID

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

