-- ClickHouse.Driver ClickHouse

SELECT
	person_1.PersonID,
	t1.PersonID
FROM
	(
		SELECT
			y.PersonID as PersonID
		FROM
			Patient y
		WHERE
			y.Diagnosis = 'a'
		UNION ALL
		SELECT
			pat.PersonID as PersonID
		FROM
			Patient pat
		WHERE
			pat.Diagnosis = 'b'
	) t1
		INNER JOIN Person person_1 ON t1.PersonID = person_1.PersonID
ORDER BY
	person_1.PersonID

