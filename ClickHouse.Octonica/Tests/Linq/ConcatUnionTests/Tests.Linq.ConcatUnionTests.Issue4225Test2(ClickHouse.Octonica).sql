-- ClickHouse.Octonica ClickHouse
SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender,
	toInt32(NULL) as PersonID_1,
	toString(NULL) as Diagnosis
FROM
	Person x
UNION ALL
SELECT
	toString(NULL) as FirstName,
	toInt32(NULL) as PersonID,
	toString(NULL) as LastName,
	toString(NULL) as MiddleName,
	toString(NULL) as Gender,
	x_1.PersonID as PersonID_1,
	x_1.Diagnosis as Diagnosis
FROM
	Patient x_1

