BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r_1.Diagnosis,
	a_Person.FirstName
FROM
	(
		SELECT
			r.PersonID as PersonID,
			r.Diagnosis as Diagnosis
		FROM
			Patient r
		UNION ALL
		SELECT
			t1.PersonID as PersonID,
			t1.Diagnosis as Diagnosis
		FROM
			Patient t1
	) r_1
		INNER JOIN Person a_Person ON r_1.PersonID = a_Person.PersonID

