BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID_1,
	t1.FirstName,
	x.Taxonomy
FROM
	(
		SELECT
			person_1.PersonID as PersonID,
			patient_1.PersonID as PersonID_1,
			person_1.FirstName as FirstName
		FROM
			Patient patient_1,
			Person person_1
	) t1
		LEFT JOIN Doctor x ON x.PersonID = t1.PersonID AND x.PersonID = t1.PersonID_1
WHERE
	startsWith(t1.FirstName, 'J')
ORDER BY
	t1.PersonID_1,
	t1.FirstName,
	x.Taxonomy

