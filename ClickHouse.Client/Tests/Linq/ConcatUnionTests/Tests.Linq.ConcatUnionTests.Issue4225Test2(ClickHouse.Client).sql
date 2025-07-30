BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID as ID,
	x.LastName,
	x.MiddleName,
	x.Gender,
	toInt32(NULL) as PersonID,
	toString(NULL) as Diagnosis
FROM
	Person x
UNION ALL
SELECT
	toString(NULL) as FirstName,
	toInt32(NULL) as ID,
	toString(NULL) as LastName,
	toString(NULL) as MiddleName,
	toString(NULL) as Gender,
	x_1.PersonID as PersonID,
	x_1.Diagnosis as Diagnosis
FROM
	Patient x_1

