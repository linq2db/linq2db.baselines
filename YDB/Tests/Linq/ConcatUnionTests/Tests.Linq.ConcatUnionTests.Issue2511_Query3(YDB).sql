-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	t3.projection__set_id__ as projection__set_id__,
	t3.ID as ID,
	t3.FirstName as FirstName,
	t3.LastName as LastName,
	t3.MiddleName as MiddleName,
	t3.Gender as Gender,
	t3.Patient as Patient,
	t3.PersonID as PersonID,
	t3.Diagnosis as Diagnosis
FROM
	(
		SELECT
			t1.ID as ID,
			Unwrap(CAST(0 AS Int32)) as projection__set_id__,
			t1.FirstName as FirstName,
			t1.LastName as LastName,
			t1.MiddleName as MiddleName,
			t1.Gender as Gender,
			CAST(NULL AS Int32) as Patient,
			CAST(NULL AS Int32) as PersonID,
			CAST(NULL AS Text) as Diagnosis
		FROM
			(
				SELECT
					p.PersonID as ID,
					p.FirstName as FirstName,
					p.LastName as LastName,
					p.MiddleName as MiddleName,
					p.Gender as Gender
				FROM
					Person p
				LIMIT $take
			) t1
		UNION ALL
		SELECT
			t2.PersonID as ID,
			Unwrap(CAST(1 AS Int32)) as projection__set_id__,
			t2.FirstName as FirstName,
			t2.LastName as LastName,
			t2.MiddleName as MiddleName,
			t2.Gender as Gender,
			a_Patient.PersonID as Patient,
			a_Patient.PersonID as PersonID,
			a_Patient.Diagnosis as Diagnosis
		FROM
			Person t2
				LEFT JOIN Patient a_Patient ON t2.PersonID = a_Patient.PersonID
	) t3
ORDER BY
	t3.ID

