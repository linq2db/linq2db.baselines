-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender,
	CAST(NULL AS Int32) as PersonID,
	CAST(NULL AS Text) as Diagnosis
FROM
	Person x
UNION ALL
SELECT
	CAST(NULL AS Text) as FirstName,
	CAST(NULL AS Int32) as ID,
	CAST(NULL AS Text) as LastName,
	CAST(NULL AS Text) as MiddleName,
	CAST(NULL AS Text) as Gender,
	x_1.PersonID as PersonID,
	x_1.Diagnosis as Diagnosis
FROM
	Patient x_1

