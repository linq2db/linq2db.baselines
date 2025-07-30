BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT
	t3.projection__set_id__,
	t3.ID,
	t3.FirstName,
	t3.LastName,
	t3.MiddleName,
	t3.Gender,
	t3.c1,
	t3.c2,
	t3.c3
FROM
	(
		SELECT
			t1.ID,
			t1.FirstName,
			t1.LastName,
			t1.MiddleName,
			t1.Gender,
			NULL::Int as c1,
			NULL::Int as c2,
			NULL::NVarChar(255) as c3,
			0::Int as projection__set_id__
		FROM
			(
				SELECT FIRST @take
					p.PersonID as ID,
					p.FirstName,
					p.LastName,
					p.MiddleName,
					p.Gender
				FROM
					Person p
			) t1
		UNION ALL
		SELECT
			t2.PersonID as ID,
			t2.FirstName,
			t2.LastName,
			t2.MiddleName,
			t2.Gender,
			a_Patient.PersonID as c1,
			a_Patient.PersonID as c2,
			a_Patient.Diagnosis as c3,
			1::Int as projection__set_id__
		FROM
			Person t2
				LEFT JOIN Patient a_Patient ON t2.PersonID = a_Patient.PersonID
	) t3
ORDER BY
	t3.ID

