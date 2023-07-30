BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	person_1.PersonID,
	y.PersonID
FROM
	(
		SELECT
			pat.PersonID as PersonID,
			pat.Diagnosis as Diagnosis
		FROM
			Patient pat
		WHERE
			pat.Diagnosis = 'a'
		UNION ALL
		SELECT
			pat_1.PersonID as PersonID,
			pat_1.Diagnosis as Diagnosis
		FROM
			Patient pat_1
		WHERE
			pat_1.Diagnosis = 'b'
	) y
		INNER JOIN Person person_1 ON y.PersonID = person_1.PersonID
ORDER BY
	person_1.PersonID

