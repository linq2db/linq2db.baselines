-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.PersonID as ID,
		t1.FirstName as FirstName,
		t1.LastName as LastName,
		t1.MiddleName as MiddleName,
		t1.Gender as Gender,
		a_Patient.PersonID as PersonID,
		a_Patient.Diagnosis as Diagnosis
	FROM
		Person t1
			LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
)
SELECT
	r.FirstName,
	r.ID,
	r.LastName,
	r.MiddleName,
	r.Gender,
	r.PersonID,
	r.Diagnosis
FROM
	CTE_1 r
WHERE
	r.ID = 2

-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		1 as c1
	FROM
		Person t1
)
SELECT
	COUNT(*)
FROM
	CTE_1 t2

