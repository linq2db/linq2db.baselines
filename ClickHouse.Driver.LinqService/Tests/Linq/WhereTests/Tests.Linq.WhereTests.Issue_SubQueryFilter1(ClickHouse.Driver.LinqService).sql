BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person e
		WHERE
			position(e.FirstName, 'John') > 0 AND e.PersonID = (
				SELECT
					d.PersonID
				FROM
					Patient d
				LIMIT 1
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			Person e_1
		WHERE
			position(e_1.FirstName, 'Tester') > 0 AND e_1.PersonID = (
				SELECT
					d_1.PersonID
				FROM
					Patient d_1
				LIMIT 1
			)
	)
ORDER BY
	t1.PersonID

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

