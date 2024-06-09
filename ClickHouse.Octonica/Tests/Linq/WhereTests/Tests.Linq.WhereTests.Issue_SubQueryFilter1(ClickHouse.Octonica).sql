BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			Person e,
			(
				SELECT
					d.PersonID as PersonID
				FROM
					Patient d
				LIMIT 1
			) t2
		WHERE
			position(e.FirstName, 'John') > 0 AND e.PersonID = t2.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person e_1,
			(
				SELECT
					d_1.PersonID as PersonID
				FROM
					Patient d_1
				LIMIT 1
			) t3
		WHERE
			position(e_1.FirstName, 'Tester') > 0 AND e_1.PersonID = t3.PersonID
	))
ORDER BY
	t1.PersonID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

