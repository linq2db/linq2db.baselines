BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.PersonID,
	person_1.FirstName,
	doctor_1.Taxonomy
FROM
	Patient t1
		CROSS JOIN Person person_1
		LEFT JOIN Doctor doctor_1 ON doctor_1.PersonID = person_1.PersonID AND doctor_1.PersonID = t1.PersonID
WHERE
	startsWith(person_1.FirstName, 'J')
ORDER BY
	t1.PersonID,
	person_1.FirstName,
	doctor_1.Taxonomy

